.class public Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "exportResolutionAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private resolution_values:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 3734
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3732
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3731
    invoke-virtual {p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->resolution_values:[Ljava/lang/String;

    .line 3733
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->resolution_values:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 3744
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 3750
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "arg0"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 3756
    if-nez p2, :cond_c

    .line 3758
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3761
    :cond_c
    const v1, 0x7f0b003f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3762
    .local v0, resolutionItem:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;->resolution_values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3763
    return-object p2
.end method
