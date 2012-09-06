.class public Lcom/google/android/apps/docs/editors/jsvm/Trix;
.super Ljava/lang/Object;
.source "Trix.java"


# direct methods
.method private static native ApplicationgetAllSheetIds(J)[I
.end method

.method private static native ApplicationgetGridModelForId(JIJ)J
.end method

.method private static native ApplicationloadData(J)V
.end method

.method private static native GridModelisInitialized(J)Z
.end method

.method private static native TrixTopLevelcreateApplication(JJLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native TrixTopLevelcreateV8Bootstrap(J)J
.end method

.method private static native TrixwrapNativeApplicationEventHandler(LwA;Lwv;)J
.end method

.method private static native TrixwrapNativeModelLoadEventHandler(LwA;Lwy;)J
.end method

.method private static native V8BootstraphandleHttpDataBatch(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native V8BootstraphandleHttpRequestFailure(JII)V
.end method

.method private static native V8BootstrapinvokeTimer(JD)I
.end method

.method public static synthetic a(JD)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->V8BootstrapinvokeTimer(JD)I

    move-result v0

    return v0
.end method

.method public static synthetic a()J
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->createTrixContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->TrixTopLevelcreateV8Bootstrap(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JIJ)J
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->ApplicationgetGridModelForId(JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JJLjava/lang/String;Ljava/lang/String;)J
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->TrixTopLevelcreateApplication(JJLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(LwA;Lwv;)Lww;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1965
    new-instance v0, Lww;

    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->TrixwrapNativeApplicationEventHandler(LwA;Lwv;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lww;-><init>(LwA;J)V

    return-object v0
.end method

.method public static a(LwA;Lwy;)Lwz;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2083
    new-instance v0, Lwz;

    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->TrixwrapNativeModelLoadEventHandler(LwA;Lwy;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lwz;-><init>(LwA;J)V

    return-object v0
.end method

.method public static synthetic a(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->ApplicationloadData(J)V

    return-void
.end method

.method public static synthetic a(JII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->V8BootstraphandleHttpRequestFailure(JII)V

    return-void
.end method

.method public static synthetic a(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static/range {p0 .. p7}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->V8BootstraphandleHttpDataBatch(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->GridModelisInitialized(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(J)[I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->ApplicationgetAllSheetIds(J)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()J
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->createTrixTopLevelInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native createTrixContext()J
.end method

.method private static native createTrixTopLevelInstance()J
.end method
