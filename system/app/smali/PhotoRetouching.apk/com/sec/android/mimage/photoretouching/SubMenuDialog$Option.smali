.class public final Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;
.super Ljava/lang/Object;
.source "SubMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# instance fields
.field public final isDimmed:Z

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4
    .parameter "title"
    .parameter "icon"
    .parameter "b"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->mTitle:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-boolean p3, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->isDimmed:Z

    .line 50
    return-void
.end method
