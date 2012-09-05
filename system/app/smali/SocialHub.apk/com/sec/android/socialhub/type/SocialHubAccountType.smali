.class public Lcom/sec/android/socialhub/type/SocialHubAccountType;
.super Ljava/lang/Object;
.source "SocialHubAccountType.java"


# static fields
.field private static final typeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    .line 21
    invoke-static {}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountType(Ljava/lang/String;)I
    .registers 2
    .parameter "type"

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, -0x1

    .line 41
    :goto_3
    return v0

    :cond_4
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method

.method private static init()V
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "1_Messaging"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "2_Email"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "3_SevenEmail"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "4_SevenIM"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "5_SNS"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sec/android/socialhub/type/SocialHubAccountType;->typeMap:Ljava/util/HashMap;

    const-string v1, "0_All"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
