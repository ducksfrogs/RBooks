### Sample_3_1.r
### �R�C��100�񓊂��V�~�����[�V�����p�X�N���v�g

S <- 100000		# �V�~�����[�V������
rec <- numeric(S)	# ���ʋL�^�p�̃��X�g
coin <- c(1,0)	# �R�C���̕\�����`
for(i in 1:S){	# �J��Ԃ��J�n
	z <- sample(coin,100,replace=TRUE)	# �R�C�����������s
	rec[i] <- sum(z)	# �\���o���񐔂��v�Z
}	# �J��Ԃ��I��
hist(rec)		# �q�X�g�O�����쐬
summary(rec)		# ��{���v�ʂ��v�Z
count <- (rec==50)	# ����A�̐����񐔂��J�E���g
mean(count)		# ����A�̐�������m�����v�Z