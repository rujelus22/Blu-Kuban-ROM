.class public Lcom/vlingo/client/android/core/audio/SpeexJNI;
.super Ljava/lang/Object;
.source "SpeexJNI.java"


# static fields
.field private static nextID:J


# instance fields
.field private ID:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-wide v0, Lcom/vlingo/client/android/core/audio/SpeexJNI;->nextID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/vlingo/client/android/core/audio/SpeexJNI;->nextID:J

    iput-wide v0, p0, Lcom/vlingo/client/android/core/audio/SpeexJNI;->ID:J

    .line 23
    return-void
.end method

.method public static init()V
    .registers 5

    .prologue
    .line 78
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    .local v0, context:Landroid/content/Context;
    const-string v3, "lib"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, libDirPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libogg.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libspeex.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libSpeexJNI.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public native Encode(J[S[BII)I
.end method

.method public native Initialize(JIIIIIFFFF)I
.end method

.method public encode([S[BII)I
    .registers 12
    .parameter "input"
    .parameter "output"
    .parameter "maxOutputLen"
    .parameter "isEnd"

    .prologue
    .line 49
    iget-wide v1, p0, Lcom/vlingo/client/android/core/audio/SpeexJNI;->ID:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/android/core/audio/SpeexJNI;->Encode(J[S[BII)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public initialize(IIIIIFFFF)I
    .registers 22
    .parameter "wb"
    .parameter "quality"
    .parameter "complexity"
    .parameter "vbr"
    .parameter "useSilenceDetection"
    .parameter "silenceThreshold"
    .parameter "minVoiceDuration"
    .parameter "voicePortion"
    .parameter "minVoiceLevel"

    .prologue
    .line 38
    iget-wide v1, p0, Lcom/vlingo/client/android/core/audio/SpeexJNI;->ID:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/vlingo/client/android/core/audio/SpeexJNI;->Initialize(JIIIIIFFFF)I

    move-result v0

    return v0
.end method
