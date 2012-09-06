.class LaN/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dd;


# instance fields
.field final synthetic a:LaN/o;


# direct methods
.method constructor <init>(LaN/o;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, LaN/p;->a:LaN/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 4
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LaN/p;->a:LaN/o;

    invoke-static {v0}, LaN/o;->a(LaN/o;)Lat/u;

    move-result-object v0

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    .line 40
    const/4 v0, 0x1

    .line 46
    :goto_13
    return v0

    .line 43
    :cond_14
    if-nez p1, :cond_25

    .line 44
    iget-object v0, p0, LaN/p;->a:LaN/o;

    invoke-static {v0}, LaN/o;->b(LaN/o;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x31d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 46
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method
