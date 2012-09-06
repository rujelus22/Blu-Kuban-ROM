.class public Lcom/google/googlenav/networkinitiated/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/networkinitiated/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/i;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 58
    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    .line 36
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "unregistered"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    if-eqz v1, :cond_1b

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 46
    :cond_1b
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/networkinitiated/j;

    const/4 v3, 0x4

    new-instance v4, Lcom/google/googlenav/networkinitiated/l;

    iget-object v5, p0, Lcom/google/googlenav/networkinitiated/i;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/googlenav/networkinitiated/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/networkinitiated/j;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/k;)V

    invoke-virtual {v1, v2}, Lac/h;->c(Lac/g;)V

    .line 54
    :cond_2f
    return-void
.end method
