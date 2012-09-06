.class final Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .registers 2
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .registers 2
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 960
    :try_start_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_13c

    move-result-object v2

    .line 970
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 971
    const/4 v0, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    .line 974
    :goto_1a
    if-eq v0, v8, :cond_1f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_56

    .line 978
    :cond_1f
    const-string v0, "historical-records"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 979
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_33} :catch_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_33} :catch_80

    .line 1052
    :catch_33
    move-exception v0

    .line 1053
    :try_start_34
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_cb

    .line 1057
    if-eqz v2, :cond_55

    .line 1059
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_137

    .line 1065
    :cond_55
    :goto_55
    return-void

    .line 975
    :cond_56
    :try_start_56
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1a

    .line 983
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    :cond_60
    :goto_60
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 987
    if-eq v3, v8, :cond_d2

    .line 988
    const/4 v4, 0x3

    if-eq v3, v4, :cond_60

    const/4 v4, 0x4

    if-eq v3, v4, :cond_60

    .line 991
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 994
    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 995
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share records file not well-formed."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catchall {:try_start_56 .. :try_end_80} :catchall_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_80} :catch_33
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_80} :catch_80

    .line 1054
    :catch_80
    move-exception v0

    .line 1055
    :try_start_81
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_cb

    .line 1057
    if-eqz v2, :cond_55

    .line 1059
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_55

    .line 1060
    :catch_a3
    move-exception v0

    goto :goto_55

    .line 998
    :cond_a5
    const/4 v3, 0x0

    :try_start_a6
    const-string v4, "activity"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    const/4 v4, 0x0

    const-string v5, "time"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1002
    const/4 v6, 0x0

    const-string v7, "weight"

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1004
    new-instance v7, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1006
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catchall {:try_start_a6 .. :try_end_ca} :catchall_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_ca} :catch_33
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ca} :catch_80

    goto :goto_60

    .line 1056
    :catchall_cb
    move-exception v0

    .line 1057
    if-eqz v2, :cond_d1

    .line 1059
    :try_start_ce
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_13a

    .line 1064
    :cond_d1
    :goto_d1
    throw v0

    .line 1017
    :cond_d2
    :try_start_d2
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_d9} :catch_33
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d9} :catch_80

    .line 1019
    :try_start_d9
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1025
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$3(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v5

    .line 1026
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1027
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_eb
    if-gez v1, :cond_102

    .line 1032
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_10f

    .line 1033
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_d9 .. :try_end_f8} :catchall_134

    .line 1057
    if-eqz v2, :cond_55

    .line 1059
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    goto/16 :goto_55

    :catch_ff
    move-exception v0

    goto/16 :goto_55

    .line 1028
    :cond_102
    :try_start_102
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    .line 1029
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_eb

    .line 1037
    :cond_10f
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1038
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1040
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    const/4 v1, 0x1

    #setter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)V

    .line 1045
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$5(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    monitor-exit v3
    :try_end_12a
    .catchall {:try_start_102 .. :try_end_12a} :catchall_134

    .line 1057
    if-eqz v2, :cond_55

    .line 1059
    :try_start_12c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_55

    :catch_131
    move-exception v0

    goto/16 :goto_55

    .line 1017
    :catchall_134
    move-exception v0

    :try_start_135
    monitor-exit v3

    throw v0
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_135 .. :try_end_137} :catch_33
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_137} :catch_80

    .line 1060
    :catch_137
    move-exception v0

    goto/16 :goto_55

    :catch_13a
    move-exception v1

    goto :goto_d1

    .line 967
    :catch_13c
    move-exception v0

    goto/16 :goto_55
.end method
