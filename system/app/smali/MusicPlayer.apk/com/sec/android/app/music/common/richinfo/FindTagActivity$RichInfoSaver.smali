.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;
.super Landroid/os/AsyncTask;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RichInfoSaver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getEncryptedParam(Ljava/io/InputStream;)[B
    .registers 14
    .parameter "in"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, encryptedData:[B
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 823
    .local v6, r:Ljava/io/Reader;
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 824
    .local v4, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 825
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 826
    .local v7, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, current:Ljava/lang/StringBuffer;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 831
    .local v3, eventType:I
    :goto_22
    if-eq v3, v11, :cond_88

    .line 832
    packed-switch v3, :pswitch_data_92

    .line 854
    :cond_27
    :goto_27
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_22

    .line 834
    :pswitch_2c
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_38} :catch_7b

    goto :goto_27

    .line 856
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_39
    move-exception v1

    .line 857
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 859
    :try_start_3d
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_76

    .line 888
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_40
    return-object v8

    .line 838
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_41
    :try_start_41
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_4e} :catch_39
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_4e} :catch_7b

    goto :goto_27

    .line 864
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4f
    move-exception v1

    .line 865
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 867
    :try_start_53
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_40

    .line 868
    :catch_57
    move-exception v5

    .line 869
    .local v5, ie:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .line 846
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #ie:Ljava/io/IOException;
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_5c
    :try_start_5c
    const-string v9, "/EncryptedData/CipherData/CipherValue"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 847
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_74} :catch_39
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_74} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_74} :catch_7b

    move-result-object v2

    goto :goto_27

    .line 860
    .end local v0           #current:Ljava/lang/StringBuffer;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_76
    move-exception v5

    .line 861
    .restart local v5       #ie:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .line 872
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5           #ie:Ljava/io/IOException;
    :catch_7b
    move-exception v1

    .line 873
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 875
    :try_start_7f
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_40

    .line 876
    :catch_83
    move-exception v5

    .line 877
    .restart local v5       #ie:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .line 883
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v5           #ie:Ljava/io/IOException;
    .restart local v0       #current:Ljava/lang/StringBuffer;
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_88
    :try_start_88
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8d

    move-object v8, v2

    .line 888
    goto :goto_40

    .line 884
    :catch_8d
    move-exception v1

    .line 885
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .line 832
    :pswitch_data_92
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_41
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 16
    .parameter "url"

    .prologue
    .line 893
    const/4 v9, 0x0

    .line 894
    .local v9, isSaved:Z
    const/4 v0, 0x0

    .line 895
    .local v0, bis:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 897
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v5, Ljava/net/URL;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v5, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 898
    .local v5, findTagUrl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 901
    .local v3, conn:Ljava/net/URLConnection;
    if-nez v3, :cond_26

    .line 902
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_bc

    move-result-object v12

    .line 942
    if-eqz v0, :cond_18

    .line 943
    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_1c

    .line 948
    :cond_18
    :goto_18
    if-eqz v6, :cond_1b

    .line 949
    :try_start_1a
    throw v6
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_21

    .line 954
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #findTagUrl:Ljava/net/URL;
    :cond_1b
    :goto_1b
    return-object v12

    .line 944
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v5       #findTagUrl:Ljava/net/URL;
    :catch_1c
    move-exception v4

    .line 945
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 950
    .end local v4           #e:Ljava/io/IOException;
    :catch_21
    move-exception v4

    .line 951
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 905
    .end local v4           #e:Ljava/io/IOException;
    :cond_26
    :try_start_26
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 908
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->getEncryptedParam(Ljava/io/InputStream;)[B

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_36} :catch_bc

    .line 915
    .end local v0           #bis:Ljava/io/InputStream;
    .local v1, bis:Ljava/io/InputStream;
    :try_start_36
    sget-object v12, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 920
    .local v8, index:I
    sget-object v12, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 930
    .local v10, path:Ljava/lang/String;
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_b5
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_55} :catch_be

    .line 932
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 933
    .local v11, read:I
    const/16 v12, 0x400

    :try_start_58
    new-array v2, v12, [B

    .line 934
    .local v2, buffer:[B
    :goto_5a
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7b

    .line 935
    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_65} :catch_66

    goto :goto_5a

    .line 938
    .end local v2           #buffer:[B
    :catch_66
    move-exception v4

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 939
    .end local v1           #bis:Ljava/io/InputStream;
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #findTagUrl:Ljava/net/URL;
    .end local v8           #index:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #read:I
    .restart local v0       #bis:Ljava/io/InputStream;
    .restart local v4       #e:Ljava/io/IOException;
    :goto_69
    :try_start_69
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_9f

    .line 942
    if-eqz v0, :cond_71

    .line 943
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_95

    .line 948
    :cond_71
    :goto_71
    if-eqz v6, :cond_76

    .line 949
    :try_start_73
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_9a

    .line 954
    .end local v4           #e:Ljava/io/IOException;
    :cond_76
    :goto_76
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_1b

    .line 937
    .end local v0           #bis:Ljava/io/InputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bis:Ljava/io/InputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v5       #findTagUrl:Ljava/net/URL;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #index:I
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #read:I
    :cond_7b
    const/4 v9, 0x1

    .line 942
    if-eqz v1, :cond_81

    .line 943
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_89

    .line 948
    :cond_81
    :goto_81
    if-eqz v7, :cond_86

    .line 949
    :try_start_83
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8e

    :cond_86
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 952
    .end local v1           #bis:Ljava/io/InputStream;
    .restart local v0       #bis:Ljava/io/InputStream;
    goto :goto_76

    .line 944
    .end local v0           #bis:Ljava/io/InputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bis:Ljava/io/InputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_89
    move-exception v4

    .line 945
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 950
    .end local v4           #e:Ljava/io/IOException;
    :catch_8e
    move-exception v4

    .line 951
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 953
    .end local v1           #bis:Ljava/io/InputStream;
    .restart local v0       #bis:Ljava/io/InputStream;
    goto :goto_76

    .line 944
    .end local v2           #buffer:[B
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #findTagUrl:Ljava/net/URL;
    .end local v8           #index:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #read:I
    :catch_95
    move-exception v4

    .line 945
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    .line 950
    :catch_9a
    move-exception v4

    .line 951
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 941
    .end local v4           #e:Ljava/io/IOException;
    :catchall_9f
    move-exception v12

    .line 942
    :goto_a0
    if-eqz v0, :cond_a5

    .line 943
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ab

    .line 948
    :cond_a5
    :goto_a5
    if-eqz v6, :cond_aa

    .line 949
    :try_start_a7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_b0

    .line 952
    :cond_aa
    :goto_aa
    throw v12

    .line 944
    :catch_ab
    move-exception v4

    .line 945
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 950
    .end local v4           #e:Ljava/io/IOException;
    :catch_b0
    move-exception v4

    .line 951
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    .line 941
    .end local v0           #bis:Ljava/io/InputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/InputStream;
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v5       #findTagUrl:Ljava/net/URL;
    :catchall_b5
    move-exception v12

    move-object v0, v1

    .end local v1           #bis:Ljava/io/InputStream;
    .restart local v0       #bis:Ljava/io/InputStream;
    goto :goto_a0

    .end local v0           #bis:Ljava/io/InputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bis:Ljava/io/InputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #index:I
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #read:I
    :catchall_b8
    move-exception v12

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/InputStream;
    .restart local v0       #bis:Ljava/io/InputStream;
    goto :goto_a0

    .line 938
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #findTagUrl:Ljava/net/URL;
    .end local v8           #index:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #read:I
    :catch_bc
    move-exception v4

    goto :goto_69

    .end local v0           #bis:Ljava/io/InputStream;
    .restart local v1       #bis:Ljava/io/InputStream;
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v5       #findTagUrl:Ljava/net/URL;
    :catch_be
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/InputStream;
    .restart local v0       #bis:Ljava/io/InputStream;
    goto :goto_69
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 787
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 797
    const-string v0, "RichInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RichInfoSaver onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    .line 799
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->setResult(I)V

    .line 806
    :goto_2d
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->finish()V

    .line 807
    return-void

    .line 804
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->setResult(I)V

    goto :goto_2d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 787
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 790
    const-string v0, "RichInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RichInfoSaver onPreExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$902(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 793
    return-void
.end method
