.class final Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$1;
.super Ljava/lang/Object;
.source "ContactDisplayItemPopupAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter;->showDetailSelectionDialog([Lcom/vlingo/client/core/contacts/DisplayItem;Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/car/util/ContactDisplayItemPopupAdapter$ContactDisplayItemPopupAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 64
    return-void
.end method
