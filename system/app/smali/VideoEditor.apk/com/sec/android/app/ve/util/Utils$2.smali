.class Lcom/sec/android/app/ve/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/util/Utils;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/util/Utils$2;->val$ctx:Landroid/content/Context;

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0800c1

    .line 1441
    if-nez p5, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1442
    const-string v3, ""

    .line 1474
    :goto_14
    return-object v3

    .line 1446
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$2()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_24

    .line 1456
    if-eqz p3, :cond_22

    .line 1458
    const/4 v1, 0x0

    :goto_20
    if-lt v1, p3, :cond_58

    .line 1474
    :cond_22
    :goto_22
    const/4 v3, 0x0

    goto :goto_14

    .line 1447
    :cond_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$2()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_55

    .line 1448
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_4d

    .line 1449
    iget-object v3, p0, Lcom/sec/android/app/ve/util/Utils$2;->val$ctx:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->access$4(Landroid/widget/Toast;)V

    .line 1452
    :goto_43
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1453
    const-string v3, ""

    goto :goto_14

    .line 1451
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_43

    .line 1446
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1459
    :cond_58
    :try_start_58
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1460
    .local v2, value:I
    const v3, 0xfe000

    if-lt v2, v3, :cond_6a

    const v3, 0xff000

    if-lt v2, v3, :cond_74

    :cond_6a
    const v3, 0xe63e

    if-lt v2, v3, :cond_a1

    const v3, 0xe757

    if-gt v2, v3, :cond_a1

    .line 1462
    :cond_74
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_91

    .line 1463
    iget-object v3, p0, Lcom/sec/android/app/ve/util/Utils$2;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0800c1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->access$4(Landroid/widget/Toast;)V

    .line 1466
    :goto_87
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_8e} :catch_9c

    .line 1467
    const-string v3, ""

    goto :goto_14

    .line 1465
    :cond_91
    :try_start_91
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$3()Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_87

    .line 1470
    .end local v2           #value:I
    :catch_9c
    move-exception v0

    .line 1471
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 1458
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #value:I
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20
.end method
