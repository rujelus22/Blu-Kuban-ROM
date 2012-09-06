.class public final Lcom/google/android/ytremote/backend/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/ytremote/backend/model/Method;

.field private c:Lcom/google/android/ytremote/backend/model/Params;

.field private d:Lcom/google/android/ytremote/model/LoungeToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/model/LoungeToken;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/b;->d:Lcom/google/android/ytremote/model/LoungeToken;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/ytremote/backend/model/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/backend/model/Method;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/b;->b:Lcom/google/android/ytremote/backend/model/Method;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/ytremote/backend/model/b;)Lcom/google/android/ytremote/backend/model/Params;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/b;->c:Lcom/google/android/ytremote/backend/model/Params;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/ytremote/backend/model/a;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/ytremote/backend/model/a;

    invoke-direct {v0, p0}, Lcom/google/android/ytremote/backend/model/a;-><init>(Lcom/google/android/ytremote/backend/model/b;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/ytremote/backend/model/Method;)Lcom/google/android/ytremote/backend/model/b;
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/ytremote/backend/model/b;->b:Lcom/google/android/ytremote/backend/model/Method;

    .line 42
    return-object p0
.end method

.method public final a(Lcom/google/android/ytremote/backend/model/Params;)Lcom/google/android/ytremote/backend/model/b;
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/ytremote/backend/model/b;->c:Lcom/google/android/ytremote/backend/model/Params;

    .line 47
    return-object p0
.end method

.method public final a(Lcom/google/android/ytremote/model/LoungeToken;)Lcom/google/android/ytremote/backend/model/b;
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/ytremote/backend/model/b;->d:Lcom/google/android/ytremote/model/LoungeToken;

    .line 52
    return-object p0
.end method
