.class Lcom/lifevibes/trimapp/Trim$8;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifevibes/trimapp/Trim;->getEditTextFilter()[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$8;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 13
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2054
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2055
    .local v2, str:Ljava/lang/String;
    sget-object v3, Lcom/lifevibes/trimapp/Trim;->mInvalidFileNameChar:[Ljava/lang/String;

    array-length v1, v3

    .line 2056
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_23

    .line 2057
    sget-object v3, Lcom/lifevibes/trimapp/Trim;->mInvalidFileNameChar:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_20

    .line 2058
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$8;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v4, 0x7f07001d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 2059
    const-string v3, ""

    .line 2062
    :goto_1f
    return-object v3

    .line 2056
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2062
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method
