.class Lcom/arcsoft/quickview/QuickViewActivity$17;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final INVALID_CHAR:[C

.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->INVALID_CHAR:[C

    return-void

    nop

    :array_10
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x2at 0x0t
        0x3ft 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x3bt 0x0t
        0xat 0x0t
        0xa0t 0x0t
    .end array-data
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 11
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->INVALID_CHAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 1446
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->INVALID_CHAR:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2a

    .line 1447
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$17;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    .line 1450
    const-string v1, ""

    .line 1453
    :goto_29
    return-object v1

    .line 1445
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1453
    :cond_2d
    const/4 v1, 0x0

    goto :goto_29
.end method
