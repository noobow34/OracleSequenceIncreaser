DECLARE
    seqName VARCHAR2(128) := 'TEST_SEQ'; --シーケンス名をセットします
    targetSeq number := 20000; --シーケンス終了値をセットします
    seqSql varchar2(1000);
    tempSeq number;
BEGIN
    DBMS_OUTPUT.PUT_LINE('***** Oracle シーケンスすすめるくん Ver 1.0 *****');
    DBMS_OUTPUT.PUT_LINE('処理対象シーケンス名：' || seqName);
    seqSql := 'SELECT ' || seqName || '.nextval from dual';
    DBMS_OUTPUT.PUT_LINE('実行SQL：' || seqSql);
    EXECUTE IMMEDIATE seqSQl INTO tempSeq;
    DBMS_OUTPUT.PUT_LINE('シーケンス現在値：' || tempSeq);
    DBMS_OUTPUT.PUT_LINE('シーケンス終了値：' || targetSeq);

    WHILE(tempSeq < targetSeq) loop
        EXECUTE IMMEDIATE seqSQl INTO tempSeq;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('シーケンスが' || tempSeq ||'になりました。終了します。');
END; 
/