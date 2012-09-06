.class final Lcom/android/email/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const/4 v2, 0x0

    .line 646
    sub-int v4, p3, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_f

    .line 682
    :cond_e
    :goto_e
    :sswitch_e
    return-object v2

    .line 652
    :cond_f
    move v3, p5

    .line 653
    .local v3, scanBack:I
    const/4 v1, 0x0

    .line 654
    .local v1, dotFound:Z
    :goto_11
    if-lez v3, :cond_e

    .line 655
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 656
    .local v0, c:C
    sparse-switch v0, :sswitch_data_34

    goto :goto_11

    .line 658
    :sswitch_1d
    const/4 v1, 0x1

    .line 659
    goto :goto_11

    .line 663
    :sswitch_1f
    if-eqz v1, :cond_e

    .line 669
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_30

    .line 670
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 671
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 674
    .end local v2           #sb:Landroid/text/SpannableStringBuilder;
    :cond_30
    const-string v2, ", "

    goto :goto_e

    .line 656
    nop

    :sswitch_data_34
    .sparse-switch
        0x2c -> :sswitch_e
        0x2e -> :sswitch_1d
        0x40 -> :sswitch_1f
    .end sparse-switch
.end method
