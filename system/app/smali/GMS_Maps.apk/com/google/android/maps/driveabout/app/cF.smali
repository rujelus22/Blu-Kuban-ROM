.class Lcom/google/android/maps/driveabout/app/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 141
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 146
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    return-object v0
.end method
