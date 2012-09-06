.class Ld;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La;


# direct methods
.method constructor <init>(La;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Ld;->a:La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Lf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Ld;->a()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 175
    invoke-static {}, Lf;->a()V

    .line 176
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/app/NotificationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Lf;->a(LanD;)V

    .line 171
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    invoke-static {p1}, Lf;->a(LanG;)V

    .line 161
    return-void
.end method
