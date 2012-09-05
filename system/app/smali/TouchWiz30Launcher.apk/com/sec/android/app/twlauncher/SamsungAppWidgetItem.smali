.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
.super Ljava/lang/Object;
.source "SamsungAppWidgetItem.java"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mHorizontalHeight:I

.field public mHorizontalWidth:I

.field public mOrder:I

.field public mPackageName:Ljava/lang/String;

.field public mThemeName:Ljava/lang/String;

.field public mVerticalHeight:I

.field public mVerticalWidth:I

.field public mWidgetIcon:Landroid/graphics/drawable/Drawable;

.field public mWidgetId:Ljava/lang/String;

.field public mWidgetPreview:I

.field public mWidgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 31
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 33
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 35
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getHeight(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 72
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 74
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto :goto_5
.end method

.method public getWidth(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 63
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 64
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 66
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    goto :goto_5
.end method
