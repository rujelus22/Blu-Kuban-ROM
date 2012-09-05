.class public Lorg/cups4j/test/CupsTest;
.super Ljava/lang/Object;
.source "CupsTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getJobs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "host"
    .parameter "userName"
    .parameter "printerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    if-nez p0, :cond_4

    .line 101
    const-string p0, "localhost"

    .line 104
    :cond_4
    if-nez p1, :cond_8

    .line 105
    const-string p1, "anonymous"

    .line 107
    :cond_8
    if-nez p2, :cond_19

    .line 108
    new-instance v1, Lorg/cups4j/CupsClient;

    .line 109
    const/16 v4, 0x277

    .line 108
    invoke-direct {v1, p0, v4, p1}, Lorg/cups4j/CupsClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .local v1, cupsClient:Lorg/cups4j/CupsClient;
    invoke-virtual {v1}, Lorg/cups4j/CupsClient;->getDefaultPrinter()Lorg/cups4j/CupsPrinter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cups4j/CupsPrinter;->getName()Ljava/lang/String;

    move-result-object p2

    .line 113
    .end local v1           #cupsClient:Lorg/cups4j/CupsClient;
    :cond_19
    new-instance v1, Lorg/cups4j/CupsClient;

    invoke-direct {v1}, Lorg/cups4j/CupsClient;-><init>()V

    .line 116
    .restart local v1       #cupsClient:Lorg/cups4j/CupsClient;
    const/4 v3, 0x1

    .line 117
    .local v3, myJobs:Z
    const-string v4, "anonymous"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 118
    const/4 v3, 0x0

    .line 120
    :cond_28
    new-instance v4, Lorg/cups4j/CupsPrinter;

    .line 121
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/printers/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    const/4 v6, 0x0

    invoke-direct {v4, v5, p2, v6}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    sget-object v5, Lorg/cups4j/WhichJobsEnum;->ALL:Lorg/cups4j/WhichJobsEnum;

    .line 120
    invoke-virtual {v1, v4, v5, p1, v3}, Lorg/cups4j/CupsClient;->getJobs(Lorg/cups4j/CupsPrinter;Lorg/cups4j/WhichJobsEnum;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, jobs:Ljava/util/List;,"Ljava/util/List<Lorg/cups4j/PrintJobAttributes;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 129
    return-void

    .line 124
    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cups4j/PrintJobAttributes;

    .line 125
    .local v0, a:Lorg/cups4j/PrintJobAttributes;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "job: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cups4j/PrintJobAttributes;->getJobID()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cups4j/PrintJobAttributes;->getJobName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cups4j/PrintJobAttributes;->getJobState()Lorg/cups4j/JobStateEnum;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cups4j/PrintJobAttributes;->getPrinterURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 127
    invoke-virtual {v0}, Lorg/cups4j/PrintJobAttributes;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_56
.end method

.method private static listPrintersOnHost(Ljava/lang/String;)V
    .registers 11
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "List printers on "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, printers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cups4j/CupsPrinter;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v4, v6, v8

    .line 191
    .local v4, timeoutTime:J
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_2d

    if-eqz v3, :cond_3d

    .line 201
    :cond_2d
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_52

    .line 202
    :cond_35
    new-instance v6, Ljava/lang/Exception;

    .line 203
    const-string v7, "Error! Could not find any printers - check CUPS log files please."

    .line 202
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_3d
    :try_start_3d
    new-instance v0, Lorg/cups4j/CupsClient;

    .line 194
    const/16 v6, 0x277

    .line 193
    invoke-direct {v0, p0, v6}, Lorg/cups4j/CupsClient;-><init>(Ljava/lang/String;I)V

    .line 195
    .local v0, cupsClient:Lorg/cups4j/CupsClient;
    invoke-virtual {v0}, Lorg/cups4j/CupsClient;->getPrinters()Ljava/util/ArrayList;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_49

    move-result-object v3

    goto :goto_23

    .line 196
    .end local v0           #cupsClient:Lorg/cups4j/CupsClient;
    :catch_49
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "could not get printers... retrying"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 206
    .end local v1           #e:Ljava/lang/Exception;
    :cond_52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_64

    .line 209
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "----\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    return-void

    .line 206
    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cups4j/CupsPrinter;

    .line 207
    .local v2, p:Lorg/cups4j/CupsPrinter;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_56
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "localhost"

    .line 41
    .local v0, host:Ljava/lang/String;
    const/4 v1, 0x0

    .line 42
    .local v1, printerName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 43
    .local v11, print:Z
    const/4 v9, 0x0

    .line 44
    .local v9, getPrinters:Z
    const/4 v8, 0x0

    .line 45
    .local v8, getJobs:Z
    const/4 v5, 0x0

    .line 46
    .local v5, duplex:Z
    const/4 v2, 0x0

    .line 47
    .local v2, fileName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 48
    .local v12, userName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 49
    .local v6, attributes:Ljava/lang/String;
    const/4 v3, 0x1

    .line 50
    .local v3, copies:I
    const/4 v4, 0x0

    .line 53
    .local v4, pages:Ljava/lang/String;
    :try_start_c
    array-length v13, p0

    if-nez v13, :cond_12

    .line 54
    invoke-static {}, Lorg/cups4j/test/CupsTest;->usage()V

    .line 56
    :cond_12
    const/4 v10, 0x0

    .local v10, i:I
    :goto_13
    array-length v13, p0

    if-lt v10, v13, :cond_26

    .line 83
    if-eqz v9, :cond_1b

    .line 84
    invoke-static {v0}, Lorg/cups4j/test/CupsTest;->listPrintersOnHost(Ljava/lang/String;)V

    .line 86
    :cond_1b
    if-eqz v11, :cond_20

    .line 87
    invoke-static/range {v0 .. v6}, Lorg/cups4j/test/CupsTest;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 90
    :cond_20
    if-eqz v8, :cond_25

    .line 91
    invoke-static {v0, v12, v1}, Lorg/cups4j/test/CupsTest;->getJobs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v10           #i:I
    :cond_25
    :goto_25
    return-void

    .line 57
    .restart local v10       #i:I
    :cond_26
    aget-object v13, p0, v10

    const-string v14, "-h"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 58
    add-int/lit8 v10, v10, 0x1

    aget-object v0, p0, v10

    .line 56
    :cond_34
    :goto_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 59
    :cond_37
    aget-object v13, p0, v10

    const-string v14, "getPrinters"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 60
    const/4 v9, 0x1

    goto :goto_34

    .line 61
    :cond_43
    aget-object v13, p0, v10

    const-string v14, "printFile"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 62
    const/4 v11, 0x1

    .line 63
    add-int/lit8 v10, v10, 0x1

    aget-object v2, p0, v10

    goto :goto_34

    .line 64
    :cond_53
    aget-object v13, p0, v10

    const-string v14, "getJobs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 65
    const/4 v8, 0x1

    goto :goto_34

    .line 66
    :cond_5f
    aget-object v13, p0, v10

    const-string v14, "-u"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 67
    add-int/lit8 v10, v10, 0x1

    aget-object v12, p0, v10

    goto :goto_34

    .line 68
    :cond_6e
    aget-object v13, p0, v10

    const-string v14, "-c"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 69
    add-int/lit8 v10, v10, 0x1

    aget-object v13, p0, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_34

    .line 70
    :cond_81
    aget-object v13, p0, v10

    const-string v14, "-p"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 71
    add-int/lit8 v10, v10, 0x1

    aget-object v13, p0, v10

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    .line 72
    :cond_94
    aget-object v13, p0, v10

    const-string v14, "-P"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a3

    .line 73
    add-int/lit8 v10, v10, 0x1

    aget-object v1, p0, v10

    goto :goto_34

    .line 74
    :cond_a3
    aget-object v13, p0, v10

    const-string v14, "-duplex"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_af

    .line 75
    const/4 v5, 0x1

    goto :goto_34

    .line 76
    :cond_af
    aget-object v13, p0, v10

    const-string v14, "-job-attributes"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bf

    .line 77
    add-int/lit8 v10, v10, 0x1

    aget-object v6, p0, v10

    goto/16 :goto_34

    .line 78
    :cond_bf
    aget-object v13, p0, v10

    const-string v14, "-help"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 79
    invoke-static {}, Lorg/cups4j/test/CupsTest;->usage()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_cc} :catch_ce

    goto/16 :goto_34

    .line 93
    .end local v10           #i:I
    :catch_ce
    move-exception v7

    .line 94
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_25
.end method

.method private static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 19
    .parameter "host"
    .parameter "printerName"
    .parameter "fileName"
    .parameter "copies"
    .parameter "pages"
    .parameter "duplex"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 137
    .local v8, printer:Lorg/cups4j/CupsPrinter;
    new-instance v2, Lorg/cups4j/CupsClient;

    const/16 v9, 0x277

    invoke-direct {v2, p0, v9}, Lorg/cups4j/CupsClient;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v2, cupsClient:Lorg/cups4j/CupsClient;
    if-nez p1, :cond_105

    .line 140
    invoke-virtual {v2}, Lorg/cups4j/CupsClient;->getDefaultPrinter()Lorg/cups4j/CupsPrinter;

    move-result-object v8

    .line 148
    :goto_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v1, attributeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p6, :cond_29

    .line 150
    const-string v9, "job-attributes"

    const-string v10, "+"

    const-string v11, " "

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_29
    new-instance v9, Lorg/cups4j/PrintJob$Builder;

    invoke-direct {v9, v3}, Lorg/cups4j/PrintJob$Builder;-><init>(Ljava/io/InputStream;)V

    const-string v10, "testJobName"

    invoke-virtual {v9, v10}, Lorg/cups4j/PrintJob$Builder;->jobName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    .line 154
    const-string v10, "harald"

    invoke-virtual {v9, v10}, Lorg/cups4j/PrintJob$Builder;->userName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    invoke-virtual {v9, p3}, Lorg/cups4j/PrintJob$Builder;->copies(I)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lorg/cups4j/PrintJob$Builder;->pageRanges(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    .line 155
    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lorg/cups4j/PrintJob$Builder;->duplex(Z)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/cups4j/PrintJob$Builder;->attributes(Ljava/util/HashMap;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lorg/cups4j/PrintJob$Builder;->build()Lorg/cups4j/PrintJob;

    move-result-object v6

    .line 158
    .local v6, printJob:Lorg/cups4j/PrintJob;
    invoke-virtual {v8, v6}, Lorg/cups4j/CupsPrinter;->print(Lorg/cups4j/PrintJob;)Lorg/cups4j/PrintRequestResult;

    move-result-object v7

    .line 159
    .local v7, printRequestResult:Lorg/cups4j/PrintRequestResult;
    invoke-virtual {v7}, Lorg/cups4j/PrintRequestResult;->isSuccessfulResult()Z

    move-result v9

    if-eqz v9, :cond_137

    .line 160
    invoke-virtual {v7}, Lorg/cups4j/PrintRequestResult;->getJobId()I

    move-result v5

    .line 162
    .local v5, jobID:I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file sent to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/cups4j/CupsPrinter;->getPrinterURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    const-string v11, " jobID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "... current status = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8, v5}, Lorg/cups4j/CupsPrinter;->getJobStatus(I)Lorg/cups4j/JobStateEnum;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "... status after 1 sec. = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8, v5}, Lorg/cups4j/CupsPrinter;->getJobStatus(I)Lorg/cups4j/JobStateEnum;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 167
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Get last Printjob"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, p0, v5}, Lorg/cups4j/CupsClient;->getJobAttributes(Ljava/lang/String;I)Lorg/cups4j/PrintJobAttributes;

    move-result-object v4

    .line 172
    .local v4, job:Lorg/cups4j/PrintJobAttributes;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ID: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/cups4j/PrintJobAttributes;->getJobID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 173
    invoke-virtual {v4}, Lorg/cups4j/PrintJobAttributes;->getUserName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/cups4j/PrintJobAttributes;->getJobURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 174
    const-string v11, " status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/cups4j/PrintJobAttributes;->getJobState()Lorg/cups4j/JobStateEnum;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    return-void

    .line 142
    .end local v1           #attributeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #job:Lorg/cups4j/PrintJobAttributes;
    .end local v5           #jobID:I
    .end local v6           #printJob:Lorg/cups4j/PrintJob;
    .end local v7           #printRequestResult:Lorg/cups4j/PrintRequestResult;
    :cond_105
    new-instance v8, Lorg/cups4j/CupsPrinter;

    .end local v8           #printer:Lorg/cups4j/CupsPrinter;
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 143
    const/16 v11, 0x277

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/printers/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    const/4 v10, 0x0

    .line 142
    invoke-direct {v8, v9, p1, v10}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    .restart local v8       #printer:Lorg/cups4j/CupsPrinter;
    goto/16 :goto_13

    .line 177
    .restart local v1       #attributeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #printJob:Lorg/cups4j/PrintJob;
    .restart local v7       #printRequestResult:Lorg/cups4j/PrintRequestResult;
    :cond_137
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "print error! status code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v7}, Lorg/cups4j/PrintRequestResult;->getResultCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 179
    const-string v11, " status description: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 180
    invoke-virtual {v7}, Lorg/cups4j/PrintRequestResult;->getResultDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 177
    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static usage()V
    .registers 2

    .prologue
    .line 213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 214
    const-string v1, "CupsTest [-h <hostname>] [getPrinters][getJobs [-u <userName>][-P <printer name>]][printFile <file name> [-P <printer name>] [-c <copies>][-p <pages>][-duplex][-job-attributes <attributes>]] -help "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 216
    const-string v1, "  <hostname>      - CUPS host name or ip adress (default: localhost)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 218
    const-string v1, "  getPrinters     - list all printers from <hostname>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 220
    const-string v1, "  getJobs         - list Jobs for given printer and user name on given host."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 222
    const-string v1, "                    defaults are: <hostname>=localhost, printer=default on <hostname>, user=anonymous"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 224
    const-string v1, "  printFile       - print the file provided in following parameter"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  <filename>      - postscript file to print"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  <printer name>  - printer name on <hostname>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 228
    const-string v1, "  <copies>        - number of copies (default: 1 wich means the document will be printed once)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 230
    const-string v1, "  <pages>         - ranges of pages to print in the following syntax: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 232
    const-string v1, "                    1-2,4,6,10-12 - single ranges need to be in ascending order"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 234
    const-string v1, "  -duplex         - turns on double sided printing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 236
    const-string v1, "  <attributes>    - this is a list of additional print-job-attributes separated by \'+\' like:\n                    print-quality:enum:3+job-collation-type:enum:2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -help           - shows this text"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    return-void
.end method
