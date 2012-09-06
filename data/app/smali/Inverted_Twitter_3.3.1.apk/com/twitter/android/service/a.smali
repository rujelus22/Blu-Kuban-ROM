.class public final Lcom/twitter/android/service/a;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/twitter/android/service/AuthTokenService;


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/AuthTokenService;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/service/a;->a:Lcom/twitter/android/service/AuthTokenService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/service/AuthTokenService;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/service/a;->a:Lcom/twitter/android/service/AuthTokenService;

    return-object v0
.end method
