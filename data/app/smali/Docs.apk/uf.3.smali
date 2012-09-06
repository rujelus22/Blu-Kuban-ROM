.class public final Luf;
.super LWW;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>(LWI;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, LWW;-><init>(LWI;)V

    .line 27
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Luf;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 52
    const-class v0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    new-instance v1, Lug;

    invoke-direct {v1, p0}, Lug;-><init>(Luf;)V

    invoke-virtual {p0, v0, v1}, Luf;->a(Ljava/lang/Class;Lany;)V

    .line 60
    const-class v0, Lcom/google/android/apps/docs/editors/EditorsApplication;

    new-instance v1, Luh;

    invoke-direct {v1, p0}, Luh;-><init>(Luf;)V

    invoke-virtual {p0, v0, v1}, Luf;->a(Ljava/lang/Class;Lany;)V

    .line 68
    new-instance v0, Lui;

    invoke-direct {v0, p0}, Lui;-><init>(Luf;)V

    invoke-virtual {p0, v0}, Luf;->a(LWY;)V

    .line 73
    return-void
.end method
