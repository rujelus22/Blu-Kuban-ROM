.class public Ld/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/x;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 506
    new-instance v0, Ld/y;

    invoke-direct {v0}, Ld/y;-><init>()V

    sput-object v0, Ld/u;->a:Ld/x;

    .line 514
    :goto_d
    return-void

    .line 507
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1c

    .line 508
    new-instance v0, Ld/w;

    invoke-direct {v0}, Ld/w;-><init>()V

    sput-object v0, Ld/u;->a:Ld/x;

    goto :goto_d

    .line 509
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 510
    new-instance v0, Ld/v;

    invoke-direct {v0}, Ld/v;-><init>()V

    sput-object v0, Ld/u;->a:Ld/x;

    goto :goto_d

    .line 512
    :cond_2a
    new-instance v0, Ld/z;

    invoke-direct {v0}, Ld/z;-><init>()V

    sput-object v0, Ld/u;->a:Ld/x;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Ld/u;->b:Ljava/lang/Object;

    .line 525
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 581
    sget-object v0, Ld/u;->a:Ld/x;

    iget-object v1, p0, Ld/u;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ld/x;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 582
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1017
    if-ne p0, p1, :cond_5

    .line 1034
    :cond_4
    :goto_4
    return v0

    .line 1020
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1021
    goto :goto_4

    .line 1023
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 1024
    goto :goto_4

    .line 1026
    :cond_15
    check-cast p1, Ld/u;

    .line 1027
    iget-object v2, p0, Ld/u;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 1028
    iget-object v2, p1, Ld/u;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1029
    goto :goto_4

    .line 1031
    :cond_21
    iget-object v2, p0, Ld/u;->b:Ljava/lang/Object;

    iget-object v3, p1, Ld/u;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1032
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Ld/u;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ld/u;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
