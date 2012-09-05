.class public Lcom/sec/android/socialhub/util/SocialHubTextUtil;
.super Ljava/lang/Object;
.source "SocialHubTextUtil.java"


# static fields
.field private static final INITIAL:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->INITIAL:[C

    return-void

    :array_a
    .array-data 0x2
        0x31t 0x31t
        0x32t 0x31t
        0x34t 0x31t
        0x37t 0x31t
        0x38t 0x31t
        0x39t 0x31t
        0x41t 0x31t
        0x42t 0x31t
        0x43t 0x31t
        0x45t 0x31t
        0x46t 0x31t
        0x47t 0x31t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
        0x4bt 0x31t
        0x4ct 0x31t
        0x4dt 0x31t
        0x4et 0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileNameByString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 15
    if-nez p0, :cond_5

    move-object v2, v3

    .line 36
    :cond_4
    :goto_4
    return-object v2

    .line 18
    :cond_5
    move-object v2, p0

    .line 22
    .local v2, ret:Ljava/lang/String;
    :try_start_6
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 24
    .local v1, lastIndex:I
    if-ltz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 26
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1f

    move-result-object v2

    goto :goto_4

    .line 29
    .end local v1           #lastIndex:I
    :catch_1f
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 33
    goto :goto_4
.end method

.method public static setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "context"
    .parameter "view"
    .parameter "compare"
    .parameter "original"
    .parameter "color"

    .prologue
    .line 67
    if-eqz p3, :cond_2b

    if-eqz p2, :cond_2b

    .line 69
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, start:I
    if-ltz v0, :cond_27

    .line 73
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    .local v1, string:Landroid/text/SpannableString;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_23

    .line 75
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    :cond_23
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .end local v0           #start:I
    .end local v1           #string:Landroid/text/SpannableString;
    :goto_26
    return-void

    .line 80
    .restart local v0       #start:I
    :cond_27
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 85
    .end local v0           #start:I
    :cond_2b
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26
.end method
