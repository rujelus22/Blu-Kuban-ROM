.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;
.super Ljava/lang/Object;
.source "AxT9KeyIconMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

.field public static final KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private mKeyIconInfoHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/16 v1, 0x2d

    const v6, 0x7f020088

    const v5, 0x7f020087

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x6

    new-array v9, v0, [Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/4 v3, 0x3

    const/16 v4, 0x8

    move v7, v6

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v2

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v4, 0x8

    move v3, v11

    move v7, v6

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    move v3, v11

    move v4, v2

    move v7, v6

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v11

    const/4 v10, 0x3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/4 v4, 0x4

    move v3, v11

    move v7, v6

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v4, 0xc

    const v5, 0x7f020081

    const v6, 0x7f020082

    const v7, 0x7f020082

    const v8, 0x7f020081

    move v3, v11

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020081

    const v6, 0x7f020082

    const v7, 0x7f020082

    const v8, 0x7f020081

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    .line 65
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->DEBUG:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INFO:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->ERROR:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    .line 69
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeKeyIconInfoHashMap()I

    move-result v0

    if-nez v0, :cond_19

    .line 73
    :cond_19
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    return-object v0
.end method

.method private makeHashKey(IIII)J
    .registers 9
    .parameter "keyPrimaryCode"
    .parameter "inputMethod"
    .parameter "inputMode"
    .parameter "stateFlag"

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .local v0, hashKey:J
    mul-int/lit16 v2, p1, 0x3e8

    mul-int/lit8 v3, p2, 0x64

    add-int/2addr v2, v3

    mul-int/lit8 v3, p3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    int-to-long v0, v2

    .line 113
    return-wide v0
.end method

.method private makeKeyIconInfoHashMap()I
    .registers 9

    .prologue
    .line 80
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 87
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_6d

    .line 88
    const-wide/16 v0, 0x0

    .line 89
    .local v0, hashKey:J
    const/4 v3, 0x0

    .line 90
    .local v3, value:[I
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mKeyPrimaryCode:I
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v4

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMethod:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v6, v6, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMode:I
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v6

    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v7, v7, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mStateFlag:I
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeHashKey(IIII)J

    move-result-wide v0

    .line 94
    const/4 v4, 0x4

    new-array v3, v4, [I

    .end local v3           #value:[I
    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mNormalIconId:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPressIconId:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPreviewIconId:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mDisableIconId:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    .line 96
    .restart local v3       #value:[I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 99
    .end local v0           #hashKey:J
    .end local v3           #value:[I
    :cond_6d
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public getKeyIconResourceId(IIII)[I
    .registers 10
    .parameter "keyPrimaryCode"
    .parameter "inputMethod"
    .parameter "inputMode"
    .parameter "stateFlag"

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 128
    .local v2, values:[I
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeHashKey(IIII)J

    move-result-wide v0

    .line 133
    .local v0, hashKey:J
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:[I
    check-cast v2, [I

    .line 135
    .restart local v2       #values:[I
    if-nez v2, :cond_13

    .line 139
    :cond_13
    return-object v2
.end method
