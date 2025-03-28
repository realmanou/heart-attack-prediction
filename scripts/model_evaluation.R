#Construction des échantillons d’apprentissage et test 
perm<-sample(nrow(heart)) 
heart<-heart[perm[1:nrow(heart)],] 
dapp<-heart[1:80,] 
dtest<-heart[-(1:80),]
##Ajustement des modèles (mod_complet,mod_1 et step.back.AIC sur l’échantillo
 n d’apprentissage. 
model1<-glm(mod_complet,data=dapp,family=binomial) 
model2<-glm(mod_1,data=dapp,family=binomial) 
model3<-glm(step.back.AIC,data=dapp,family=binomial) 
model4<-glm(model.inter1,data=dapp,family=binomial) 
model5<-glm(model.inter2,data=dapp,family=binomial) 
 
##Estimation de la probabilité d’erreur prédite sur l’échantillon test. 
pred1<-predict(model1,newdata=heart,type="response") 
pred2<-predict(model2,newdata=heart,type="response") 
pred3<-predict(model2,newdata=heart,type="response") 
pred4<-predict(model2,newdata=heart,type="response") 
pred5<-predict(model2,newdata=heart,type="response") 

##Calcul des erreurs de prédiction (round(x) = 1 si x > 1/2, 0 sinon) 
mean(round(pred1)!=heart$output)
mean(round(pred2)!=heart$output)
mean(round(pred3)!=heart$output)
mean(round(pred4)!=heart$output)
mean(round(pred5)!=heart$output)

###calcule les erreurs de type VC K-fold pour K = 10 
cv.glm(heart,model1,K=10)$delta[1] 
cv.glm(heart,model2,K=10)$delta[1]
cv.glm(heart,model3,K=10)$delta[1] 
cv.glm(heart,model4,K=10)$delta[1]
cv.glm(heart,model5,K=10)$delta[1]
