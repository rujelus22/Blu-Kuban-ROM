.class Ljackpal/androidterm/Term$3;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Ljackpal/androidterm/Term$3;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 7
    .parameter "position"
    .parameter "id"

    .prologue
    .line 194
    iget-object v1, p0, Ljackpal/androidterm/Term$3;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 195
    .local v0, oldPosition:I
    if-eq p1, v0, :cond_27

    .line 196
    iget-object v1, p0, Ljackpal/androidterm/Term$3;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 197
    iget-object v1, p0, Ljackpal/androidterm/Term$3;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mActionBarMode:I
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$800(Ljackpal/androidterm/Term;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 198
    iget-object v1, p0, Ljackpal/androidterm/Term$3;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    .line 201
    :cond_27
    const/4 v1, 0x1

    return v1
.end method
