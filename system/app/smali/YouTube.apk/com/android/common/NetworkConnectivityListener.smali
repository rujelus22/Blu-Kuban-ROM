.class public final Lcom/android/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lcom/android/common/NetworkConnectivityListener$State;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/net/NetworkInfo;

.field private g:Landroid/net/NetworkInfo;

.field private h:Lcom/android/common/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->a:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lcom/android/common/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->b:Lcom/android/common/NetworkConnectivityListener$State;

    .line 129
    new-instance v0, Lcom/android/common/a;

    invoke-direct {v0, p0}, Lcom/android/common/a;-><init>(Lcom/android/common/NetworkConnectivityListener;)V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->h:Lcom/android/common/a;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->f:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->b:Lcom/android/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/common/NetworkConnectivityListener;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->g:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic b(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->b:Lcom/android/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic c(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->a:Ljava/util/HashMap;

    return-object v0
.end method
