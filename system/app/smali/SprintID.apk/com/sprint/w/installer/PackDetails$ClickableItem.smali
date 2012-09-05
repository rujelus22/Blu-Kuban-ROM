.class Lcom/sprint/w/installer/PackDetails$ClickableItem;
.super Lcom/sprint/w/installer/PackDetails$DetailsItem;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickableItem"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field onClickIntent:Landroid/content/Intent;

.field secondTitle:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "title"
    .parameter "secondTitle"
    .parameter "context"
    .parameter "onClickIntent"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;-><init>()V

    .line 340
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1
    :cond_7
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->title:Ljava/lang/String;

    .line 341
    if-nez p2, :cond_d

    const-string p2, ""

    .end local p2
    :cond_d
    iput-object p2, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->secondTitle:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->context:Landroid/content/Context;

    .line 343
    iput-object p4, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->onClickIntent:Landroid/content/Intent;

    .line 344
    const/4 v0, 0x3

    iput v0, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->mType:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->mEnabled:Z

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/sprint/w/installer/PackDetails$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/w/installer/PackDetails$ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method clicked()V
    .registers 4

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->onClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_b

    .line 351
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->onClickIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 356
    :cond_b
    :goto_b
    return-void

    .line 353
    :catch_c
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackDetails;->access$400()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Failed to start activity"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method
