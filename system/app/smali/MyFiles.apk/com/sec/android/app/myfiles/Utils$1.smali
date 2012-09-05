.class final Lcom/sec/android/app/myfiles/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/Utils;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    const v3, 0x7f090050

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_27

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_49

    .line 240
    :cond_27
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_41

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/myfiles/Utils$1;->val$ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 247
    :goto_37
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 249
    const-string v1, ""

    .line 252
    :goto_40
    return-object v1

    .line 245
    :cond_41
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_37

    .line 235
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 252
    :cond_4c
    const/4 v1, 0x0

    goto :goto_40
.end method
