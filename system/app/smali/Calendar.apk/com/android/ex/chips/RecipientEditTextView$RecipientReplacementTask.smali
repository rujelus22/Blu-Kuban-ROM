.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 2139
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2139
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method

.method private createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;
    .registers 7
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 2142
    :try_start_1
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->access$1600(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2148
    :goto_9
    return-object v1

    .line 2145
    :cond_a
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    const/4 v3, -0x1

    const/4 v4, 0x0

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    invoke-static {v2, p1, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->access$1700(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_9

    .line 2146
    :catch_13
    move-exception v0

    .line 2147
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2139
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .parameter "params"

    .prologue
    .line 2154
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 2155
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->cancel(Z)Z

    .line 2160
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v6, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 2162
    .local v3, existingChips:[Lcom/android/ex/chips/RecipientChip;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    array-length v9, v3

    if-ge v4, v9, :cond_29

    .line 2163
    aget-object v9, v3, v4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 2165
    :cond_29
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_3a

    .line 2166
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2168
    :cond_3a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 2169
    .local v0, addresses:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_5c

    .line 2170
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v4

    .line 2169
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 2172
    :cond_5c
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2174
    .local v1, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2175
    .local v7, replacements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/RecipientChip;

    .line 2176
    .local v8, temp:Lcom/android/ex/chips/RecipientChip;
    const/4 v2, 0x0

    .line 2177
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v9

    if-eqz v9, :cond_b1

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b1

    .line 2180
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v10, v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 2183
    :cond_b1
    if-eqz v2, :cond_bb

    .line 2184
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 2186
    :cond_bb
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 2189
    .end local v2           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v8           #temp:Lcom/android/ex/chips/RecipientChip;
    :cond_bf
    if-eqz v7, :cond_d5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_d5

    .line 2190
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v10, p0, v6, v7}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2216
    :cond_d5
    const/4 v9, 0x0

    return-object v9
.end method
