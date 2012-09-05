.class final Lnb$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lnb$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnb$a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lnb$a;->a:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lnb$a;->b:Lnb$a;

    .line 526
    return-void
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lnb$a;->a:Ljava/lang/String;

    .line 533
    iget-object v1, p0, Lnb$a;->b:Lnb$a;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 536
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_20

    .line 537
    const/4 v2, 0x0

    .line 539
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_1c

    .line 540
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_e

    .line 543
    :cond_1c
    if-ne v2, p3, :cond_20

    move-object v0, v1

    .line 553
    :goto_1f
    return-object v0

    .line 547
    :cond_20
    if-eqz v0, :cond_27

    .line 548
    iget-object v1, v0, Lnb$a;->a:Ljava/lang/String;

    .line 551
    iget-object v0, v0, Lnb$a;->b:Lnb$a;

    goto :goto_7

    .line 553
    :cond_27
    const/4 v0, 0x0

    goto :goto_1f
.end method
