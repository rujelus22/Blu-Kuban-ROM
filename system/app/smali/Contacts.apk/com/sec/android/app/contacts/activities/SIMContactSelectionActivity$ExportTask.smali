.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .registers 5
    .parameter
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p3, selectedInfoHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 676
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 677
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 678
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    .line 679
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    .line 680
    invoke-static {p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 681
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 13
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 749
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5d

    .line 750
    iput v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 751
    const-string v5, "[ReFResh]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground mSelectedContactIds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 754
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimMaxCount()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimUsedCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 755
    .local v2, enableCopyCnt:I
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    .line 757
    .local v4, prog:Landroid/app/ProgressDialog;
    :cond_4a
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 758
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 759
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 799
    .end local v2           #enableCopyCnt:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v4           #prog:Landroid/app/ProgressDialog;
    :cond_5d
    :goto_5d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 762
    .restart local v2       #enableCopyCnt:I
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v4       #prog:Landroid/app/ProgressDialog;
    :cond_62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 764
    .local v0, contactId:J
    const-string v5, "[ReFResh]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-lez v2, :cond_5d

    .line 767
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v5, :cond_bc

    .line 768
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 769
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v5, v0, v1, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JZ)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v5, v9, :cond_bc

    .line 770
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4a

    .line 774
    :cond_a7
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v5, v0, v1, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSimThrougtIccProvider(JZ)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v5, v9, :cond_bc

    .line 775
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4a

    .line 788
    :cond_bc
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 789
    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 790
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-gt v2, v5, :cond_4a

    goto :goto_5d
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 805
    .line 807
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_34

    .line 808
    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_c
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_52

    .line 822
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v0, :cond_24

    .line 823
    const v0, 0x7f0a0284

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 846
    return-void

    .line 810
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    .line 811
    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 814
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_c

    .line 815
    :catch_50
    move-exception v0

    goto :goto_c

    .line 830
    :cond_52
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v0, :cond_24

    .line 831
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 833
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 687
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 689
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 690
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 693
    :cond_11
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 695
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 696
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 706
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 717
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 726
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 727
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {p1, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 735
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 737
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$800()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    .line 742
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 743
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 657
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
