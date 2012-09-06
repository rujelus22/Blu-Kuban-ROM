.class public Landroid/support/v4/view/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/S;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "JellyBean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 233
    :cond_10
    new-instance v0, Landroid/support/v4/view/R;

    invoke-direct {v0}, Landroid/support/v4/view/R;-><init>()V

    sput-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    .line 243
    :goto_17
    return-void

    .line 234
    :cond_18
    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    .line 235
    new-instance v0, Landroid/support/v4/view/Q;

    invoke-direct {v0}, Landroid/support/v4/view/Q;-><init>()V

    sput-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    goto :goto_17

    .line 236
    :cond_24
    const/16 v1, 0xb

    if-lt v0, v1, :cond_30

    .line 237
    new-instance v0, Landroid/support/v4/view/P;

    invoke-direct {v0}, Landroid/support/v4/view/P;-><init>()V

    sput-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    goto :goto_17

    .line 238
    :cond_30
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3c

    .line 239
    new-instance v0, Landroid/support/v4/view/O;

    invoke-direct {v0}, Landroid/support/v4/view/O;-><init>()V

    sput-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    goto :goto_17

    .line 241
    :cond_3c
    new-instance v0, Landroid/support/v4/view/N;

    invoke-direct {v0}, Landroid/support/v4/view/N;-><init>()V

    sput-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    goto :goto_17
.end method

.method public static a(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0}, Landroid/support/v4/view/S;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 414
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/S;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 415
    return-void
.end method

.method public static a(Landroid/view/View;Ld/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 399
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/S;->a(Landroid/view/View;Ld/f;)V

    .line 400
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/S;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0}, Landroid/support/v4/view/S;->b(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 531
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/S;->b(Landroid/view/View;I)V

    .line 532
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 515
    sget-object v0, Landroid/support/v4/view/M;->a:Landroid/support/v4/view/S;

    invoke-interface {v0, p0}, Landroid/support/v4/view/S;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method
