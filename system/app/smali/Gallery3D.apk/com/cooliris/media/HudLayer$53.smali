.class Lcom/cooliris/media/HudLayer$53;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$53;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$53;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2941
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$2100()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_37

    .line 2942
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$2100()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_34

    .line 2943
    iget-object v6, p0, Lcom/cooliris/media/HudLayer$53;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/HudLayer$53;->val$mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v8, 0x7f0600a7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2947
    const-string v6, ""

    .line 2964
    :goto_33
    return-object v6

    .line 2941
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2952
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2953
    .local v2, charArray:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_42
    if-ge v4, v5, :cond_69

    aget-char v1, v0, v4

    .line 2954
    .local v1, c:C
    const/16 v6, 0xa0

    if-ne v1, v6, :cond_66

    .line 2955
    iget-object v6, p0, Lcom/cooliris/media/HudLayer$53;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/HudLayer$53;->val$mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v8, 0x7f0600a7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2959
    const-string v6, ""

    goto :goto_33

    .line 2953
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 2964
    .end local v1           #c:C
    :cond_69
    const/4 v6, 0x0

    goto :goto_33
.end method
