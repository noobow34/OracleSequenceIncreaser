DECLARE
    seqName VARCHAR2(128) := 'TEST_SEQ'; --�V�[�P���X�����Z�b�g���܂�
    targetSeq number := 20000; --�V�[�P���X�I���l���Z�b�g���܂�
    seqSql varchar2(1000);
    tempSeq number;
BEGIN
    DBMS_OUTPUT.PUT_LINE('***** Oracle �V�[�P���X�����߂邭�� Ver 1.0 *****');
    DBMS_OUTPUT.PUT_LINE('�����ΏۃV�[�P���X���F' || seqName);
    seqSql := 'SELECT ' || seqName || '.nextval from dual';
    DBMS_OUTPUT.PUT_LINE('���sSQL�F' || seqSql);
    EXECUTE IMMEDIATE seqSQl INTO tempSeq;
    DBMS_OUTPUT.PUT_LINE('�V�[�P���X���ݒl�F' || tempSeq);
    DBMS_OUTPUT.PUT_LINE('�V�[�P���X�I���l�F' || targetSeq);

    WHILE(tempSeq < targetSeq) loop
        EXECUTE IMMEDIATE seqSQl INTO tempSeq;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('�V�[�P���X��' || tempSeq ||'�ɂȂ�܂����B�I�����܂��B');
END; 
/