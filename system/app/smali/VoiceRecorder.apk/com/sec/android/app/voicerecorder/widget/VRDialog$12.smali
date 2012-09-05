.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$12;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$12;->val$activity:Landroid/app/Activity;

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
    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$300()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_30

    .line 431
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$12;->val$activity:Landroid/app/Activity;

    const v2, 0x7f060061

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V

    .line 432
    const-string v1, ""

    .line 435
    :goto_2f
    return-object v1

    .line 428
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_33
    const/4 v1, 0x0

    goto :goto_2f
.end method
