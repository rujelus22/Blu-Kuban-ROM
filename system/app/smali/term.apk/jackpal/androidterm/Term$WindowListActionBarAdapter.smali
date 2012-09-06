.class Ljackpal/androidterm/Term$WindowListActionBarAdapter;
.super Ljackpal/androidterm/WindowListAdapter;
.source "Term.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowListActionBarAdapter"
.end annotation


# static fields
.field private static final TextAppearance_Holo_Widget_ActionBar_Title:I = 0x1030112


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/util/SessionList;)V
    .registers 3
    .parameter
    .parameter "sessions"

    .prologue
    .line 165
    iput-object p1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    .line 166
    invoke-direct {p0, p2}, Ljackpal/androidterm/WindowListAdapter;-><init>(Ljackpal/androidterm/util/SessionList;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Ljackpal/androidterm/WindowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 171
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, label:Landroid/widget/TextView;
    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v2, 0x7f060022

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/Term;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_2e

    .line 174
    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v2, 0x1030112

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 178
    :goto_2d
    return-object v0

    .line 176
    :cond_2e
    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2d
.end method

.method public onUpdate()V
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v0, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    .line 189
    return-void
.end method
