.class LaM/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, LaM/cc;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 1168
    check-cast p1, Lcom/google/googlenav/ui/android/ah;

    invoke-interface {p1}, Lcom/google/googlenav/ui/android/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1169
    iget-object v0, p0, LaM/cc;->a:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bI()V

    .line 1170
    iget-object v0, p0, LaM/cc;->a:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_3c

    .line 1172
    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_3c

    .line 1174
    iget-object v1, p0, LaM/cc;->a:LaM/bU;

    invoke-static {v1}, LaM/bU;->a(LaM/bU;)Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/B;->b(Lat/B;)J

    move-result-wide v0

    .line 1176
    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x40d3880000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3c

    .line 1183
    :cond_3b
    :goto_3b
    return-void

    .line 1181
    :cond_3c
    iget-object v0, p0, LaM/cc;->a:LaM/bU;

    invoke-static {v0}, LaM/bU;->f(LaM/bU;)V

    goto :goto_3b
.end method
