.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    .line 186
    return-void
.end method
