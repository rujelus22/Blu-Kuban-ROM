.class Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;
.super Ljava/lang/Object;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->access$002(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)I

    .line 210
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    #calls: Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    .line 211
    return-void
.end method