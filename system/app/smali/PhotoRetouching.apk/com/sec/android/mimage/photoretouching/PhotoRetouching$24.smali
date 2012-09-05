.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$24;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$24;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2650
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$50()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 2659
    const/4 v1, 0x0

    :goto_9
    return-object v1

    .line 2651
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$50()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_26

    .line 2653
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_31

    .line 2654
    :cond_26
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$24;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0x7f060043

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2656
    const-string v1, ""

    goto :goto_9

    .line 2650
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
