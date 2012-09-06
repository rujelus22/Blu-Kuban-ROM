.class Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2213
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2213
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 12
    .parameter "params"

    .prologue
    .line 2220
    const/4 v7, 0x0

    aget-object v5, p1, v7

    check-cast v5, Ljava/util/ArrayList;

    .line 2222
    .local v5, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 2223
    .local v0, addresses:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_27

    .line 2224
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 2223
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2226
    :cond_27
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2228
    .local v1, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ex/chips/RecipientChip;

    .line 2229
    .local v6, temp:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_35

    .line 2232
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v8, v7}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 2234
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v2, :cond_35

    .line 2235
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_35

    .line 2244
    .end local v2           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v6           #temp:Lcom/android/ex/chips/RecipientChip;
    :cond_8b
    const/4 v7, 0x0

    return-object v7
.end method
