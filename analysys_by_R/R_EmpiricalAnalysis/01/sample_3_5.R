### Sample_3_5.r
### ���S�Ɍ��藝�V�~�����[�V�����p�X�N���v�g

S <- 10000		# �V�~�����[�V������
n <- 10000		# �W�{�̑傫��
Zn <- numeric(S)	# ���ʋL�^�p�̃��X�g
for(i in 1:S){	# �J��Ԃ��J�n
	X <- rnorm(n,50,10)	# N(50,10)����W�{���o
	Xbar <- mean(X)
Sn <- var(X)
Zn[i] <- sqrt(n)*(Xbar-50)/sqrt(Sn)
}	# �J��Ԃ��I��
hist(Zn)		# �q�X�g�O�����쐬