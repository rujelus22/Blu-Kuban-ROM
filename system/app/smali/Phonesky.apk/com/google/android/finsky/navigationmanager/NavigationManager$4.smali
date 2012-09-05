.class Lcom/google/android/finsky/navigationmanager/NavigationManager$4;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$externalReferrer:Ljava/lang/String;

.field final synthetic val$offerType:I

.field final synthetic val$referrerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$offerType:I

    iput-object p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$referrerUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$externalReferrer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$offerType:I

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$referrerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$externalReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method
