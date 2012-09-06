.class final Lcom/android/athome/picker/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/SeekBar;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/athome/picker/m;->a:Landroid/widget/ImageView;

    .line 50
    iput-object p2, p0, Lcom/android/athome/picker/m;->b:Landroid/widget/SeekBar;

    .line 51
    iput-object p3, p0, Lcom/android/athome/picker/m;->c:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/android/athome/picker/m;->d:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/android/athome/picker/m;->e:Landroid/widget/CheckBox;

    .line 54
    return-void
.end method
