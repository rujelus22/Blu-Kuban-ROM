.class Ls/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dd;


# instance fields
.field final synthetic a:Ls/g;


# direct methods
.method private constructor <init>(Ls/g;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Ls/i;->a:Ls/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ls/g;Ls/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ls/i;-><init>(Ls/g;)V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Ls/i;->a:Ls/g;

    invoke-static {v0, v3}, Ls/g;->a(Ls/g;Z)Z

    .line 41
    if-nez p1, :cond_22

    .line 42
    iget-object v0, p0, Ls/i;->a:Ls/g;

    iget-object v0, v0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/i;->a:Ls/g;

    iget-object v1, v1, Ls/g;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;)V

    .line 45
    :cond_22
    return v3
.end method
