.class Lcom/android/calendar/EditEvent$LengthFilter;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field private mToast:Landroid/widget/Toast;

.field private prevkeep:I

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;I)V
    .registers 4
    .parameter
    .parameter "max"

    .prologue
    .line 7050
    iput-object p1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7046
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EditEvent$LengthFilter;->prevkeep:I

    .line 7048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mToast:Landroid/widget/Toast;

    .line 7051
    iput p2, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mMax:I

    .line 7052
    return-void
.end method

.method private ShowLimitMessage(I)V
    .registers 7
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 7075
    iget-object v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_27

    .line 7077
    iget-object v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7079
    .local v0, limitStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mToast:Landroid/widget/Toast;

    .line 7081
    .end local v0           #limitStr:Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7082
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
    .line 7056
    iget v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 7059
    .local v0, keep:I
    iget v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->prevkeep:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    iget v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->prevkeep:I

    if-ltz v1, :cond_1b

    :cond_14
    if-nez v0, :cond_1b

    .line 7061
    iget v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EditEvent$LengthFilter;->ShowLimitMessage(I)V

    .line 7063
    :cond_1b
    iput v0, p0, Lcom/android/calendar/EditEvent$LengthFilter;->prevkeep:I

    .line 7064
    if-gtz v0, :cond_22

    .line 7065
    const-string v1, ""

    .line 7070
    :goto_21
    return-object v1

    .line 7066
    :cond_22
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_28

    .line 7067
    const/4 v1, 0x0

    goto :goto_21

    .line 7069
    :cond_28
    iget v1, p0, Lcom/android/calendar/EditEvent$LengthFilter;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EditEvent$LengthFilter;->ShowLimitMessage(I)V

    .line 7070
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_21
.end method
