.class Lcom/samsung/swift/security/ContentLockListPreference$1;
.super Ljava/lang/Object;
.source "ContentLockListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/ContentLockListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/ContentLockListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/ContentLockListPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 11
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 187
    .local v1, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    const-string v3, "allPortlets"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_f4

    .line 191
    if-eqz p3, :cond_63

    .line 193
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v2}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 195
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v2, v2, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    aput-boolean v6, v2, v0

    .line 196
    invoke-virtual {v1, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 198
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    .line 189
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 203
    :cond_63
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v2}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 205
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    .line 206
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v2, v2, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    aput-boolean v5, v2, v0

    .line 207
    invoke-virtual {v1, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_60

    .line 214
    .end local v0           #i:I
    :cond_a0
    if-eqz p3, :cond_f5

    .line 215
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    .line 219
    :goto_bd
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #calls: Lcom/samsung/swift/security/ContentLockListPreference;->getCheckedItemsCount()I
    invoke-static {v2}, Lcom/samsung/swift/security/ContentLockListPreference;->access$300(Lcom/samsung/swift/security/ContentLockListPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_f4

    .line 221
    if-eqz p3, :cond_111

    .line 223
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v2, v2, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    aput-boolean v6, v2, v5

    .line 224
    invoke-virtual {v1, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 225
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    .line 235
    :cond_f4
    :goto_f4
    return-void

    .line 217
    :cond_f5
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    goto :goto_bd

    .line 229
    :cond_111
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v2, v2, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    aput-boolean v5, v2, v5

    .line 230
    invoke-virtual {v1, v5, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 231
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference$1;->this$0:Lcom/samsung/swift/security/ContentLockListPreference;

    #getter for: Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/swift/security/ContentLockListPreference;->access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/swift/security/ContentLockListPreference;->access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z

    goto :goto_f4
.end method
