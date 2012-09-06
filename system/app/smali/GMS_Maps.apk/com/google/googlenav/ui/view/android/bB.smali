.class public Lcom/google/googlenav/ui/view/android/bb;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field public static l:Lcom/google/googlenav/ui/android/aC;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/view/android/bb;->l:Lcom/google/googlenav/ui/android/aC;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 59
    return-void
.end method
