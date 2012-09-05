.class Lcom/swype/android/settings/LanguageListAdapter$Holder;
.super Ljava/lang/Object;
.source "LanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/LanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final checkable:Landroid/widget/Checkable;

.field public final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V
    .registers 3
    .parameter "label"
    .parameter "button"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/swype/android/settings/LanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 77
    iput-object p2, p0, Lcom/swype/android/settings/LanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 78
    return-void
.end method
