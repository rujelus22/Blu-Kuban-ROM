.class Lcom/android/contacts/list/CustomContactListFilterActivity$1;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    #calls: Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)V

    .line 141
    return-void
.end method
