.class Lci;
.super Ljava/lang/Object;
.source "ContextModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lch;


# direct methods
.method constructor <init>(Lch;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lci;->a:Lch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lci;->a:Lch;

    invoke-static {v0}, Lch;->a(Lch;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lci;->a()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method
