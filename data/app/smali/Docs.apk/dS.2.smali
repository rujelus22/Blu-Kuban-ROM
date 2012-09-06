.class public LdS;
.super LcI;
.source "BaseActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/BaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, LdS;->a:Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, LdS;->a:Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/BaseActivity;->d()V

    .line 218
    return-void
.end method
