.class public Lcom/android/athome/picker/MediaOutputSelector;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaOutputSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;,
        Lcom/android/athome/picker/MediaOutputSelector$Listener;
    }
.end annotation


# static fields
.field private static mOutputNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

.field private mActiveOutputsList:Landroid/widget/ListView;

.field private mAtHomeGroupEditingDone:Landroid/widget/Button;

.field private mAtHomeGroupList:Landroid/widget/ListView;

.field private mAtHomeReceiverList:Landroid/widget/ListView;

.field private mAtHomeSection:Landroid/view/ViewGroup;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDetailsIcon:Landroid/widget/ImageView;

.field private mDialog:Landroid/app/AlertDialog;

.field private mGroupAdapterListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

.field private mGroupAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/athome/picker/MediaGroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

.field private mMasterVolumeMode:I

.field private mMasterVolumeSlider:Landroid/widget/SeekBar;

.field private mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

.field private mOutputAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/athome/picker/MediaOutputAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimarySpeakerIcon:Landroid/widget/ImageView;

.field private mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

.field private mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

.field private mSpeakerSection:Landroid/view/ViewGroup;

.field private mSpeakersList:Landroid/widget/ListView;

.field private mUIMode:I

.field private mUIModeBySection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRouteGroupLayout:Landroid/view/ViewGroup;

.field private mUserRouteGroupList:Landroid/widget/ListView;

.field private mUserRouteList:Landroid/widget/ListView;

.field private mUserRouteReceiverLayout:Landroid/view/ViewGroup;

.field private mUserRouteSection:Landroid/view/ViewGroup;

.field private mVolumeDetailSection:Landroid/view/ViewGroup;

.field private mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 501
    new-instance v0, Lcom/android/athome/picker/MediaOutputSelector$8;

    invoke-direct {v0}, Lcom/android/athome/picker/MediaOutputSelector$8;-><init>()V

    sput-object v0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    .line 50
    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    .line 52
    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    .line 59
    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    .line 128
    new-instance v0, Lcom/android/athome/picker/MediaOutputSelector$1;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/MediaOutputSelector$1;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    .line 793
    new-instance v0, Lcom/android/athome/picker/MediaOutputSelector$9;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/MediaOutputSelector$9;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapterListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

    .line 825
    new-instance v0, Lcom/android/athome/picker/MediaOutputSelector$10;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/MediaOutputSelector$10;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->toggleMasterVolumeMute()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/graphics/drawable/LevelListDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutput;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputSelector$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputSelector;->updateVolumeDetailsView(Lcom/android/athome/picker/MediaOutputGroup;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;)Ljava/util/ArrayList;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputSelector;->getIndividualOutputs(Lcom/android/athome/picker/MediaGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/athome/picker/MediaOutputSelector;Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->onStartVolumeDetailsChange()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutput;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputSelector;->editGroup(Lcom/android/athome/picker/MediaOutput;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputAdapter;Lcom/android/athome/picker/MediaOutput;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputSelector;->selectOutput(Lcom/android/athome/picker/MediaOutputAdapter;Lcom/android/athome/picker/MediaOutput;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateViewVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputSelector;->selectOutputGroup(Lcom/android/athome/picker/MediaGroupAdapter;Lcom/android/athome/picker/MediaOutputGroup;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/athome/picker/MediaOutputSelector;->isOnSpeaker(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/athome/picker/MediaOutputSelector;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    return v0
.end method

.method private clearSelected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->isGroupSelected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 432
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaGroupAdapter;

    invoke-virtual {v0, v2}, Lcom/android/athome/picker/MediaGroupAdapter;->setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 436
    :cond_1c
    :goto_1c
    return-void

    .line 433
    :cond_1d
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_1c

    .line 434
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputAdapter;

    invoke-virtual {v0, v2}, Lcom/android/athome/picker/MediaOutputAdapter;->setSelectedOutput(Lcom/android/athome/picker/MediaOutput;)V

    goto :goto_1c
.end method

.method private configureGroupList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V
    .registers 8
    .parameter "groupList"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/MediaOutputGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, atHomeGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/high16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 359
    new-instance v0, Lcom/android/athome/picker/MediaGroupAdapter;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/athome/picker/MediaGroupAdapter;-><init>(Landroid/content/Context;I)V

    .line 360
    .local v0, adapter:Lcom/android/athome/picker/MediaGroupAdapter;
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapterListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/MediaGroupAdapter;->setListener(Lcom/android/athome/picker/MediaGroupAdapter$Listener;)V

    .line 361
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, p2, v0}, Lcom/android/athome/picker/MediaOutputSelector;->updateGroupAdapter(Ljava/util/ArrayList;Lcom/android/athome/picker/MediaGroupAdapter;)V

    .line 363
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaGroupAdapter;->setView(Landroid/widget/AdapterView;)V

    .line 364
    new-instance v1, Lcom/android/athome/picker/MediaOutputSelector$7;

    invoke-direct {v1, p0, v0}, Lcom/android/athome/picker/MediaOutputSelector$7;-><init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    return-void
.end method

.method private configureReceiverList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V
    .registers 8
    .parameter "receiverList"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, atHomeReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const/high16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 342
    new-instance v0, Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p3}, Lcom/android/athome/picker/MediaOutputAdapter;-><init>(Landroid/content/Context;II)V

    .line 343
    .local v0, adapter:Lcom/android/athome/picker/MediaOutputAdapter;
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0, v0, p2}, Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->setView(Landroid/widget/AdapterView;)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    new-instance v1, Lcom/android/athome/picker/MediaOutputSelector$6;

    invoke-direct {v1, p0, v0}, Lcom/android/athome/picker/MediaOutputSelector$6;-><init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 353
    return-void
.end method

.method private configureUi(Landroid/os/Bundle;)V
    .registers 13
    .parameter "instanceState"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 210
    .local v1, args:Landroid/os/Bundle;
    const-string v8, "selected_output"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/athome/picker/MediaOutput;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    .line 211
    const-string v8, "MediaOutputSelector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SelectedOutput: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_1d2

    .line 215
    const-string v8, "ui_mode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    .line 220
    :goto_33
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-eqz v8, :cond_1d7

    const/4 v4, 0x1

    .line 222
    .local v4, enableVolumeControl:Z
    :goto_38
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->icon_volume:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    .line 223
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

    .line 224
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    new-instance v9, Lcom/android/athome/picker/MediaOutputSelector$2;

    invoke-direct {v9, p0}, Lcom/android/athome/picker/MediaOutputSelector$2;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 232
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->volume_slider:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    .line 233
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    new-instance v9, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;-><init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputSelector$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 234
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 236
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->icon_detailed:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDetailsIcon:Landroid/widget/ImageView;

    .line 237
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDetailsIcon:Landroid/widget/ImageView;

    new-instance v9, Lcom/android/athome/picker/MediaOutputSelector$3;

    invoke-direct {v9, p0}, Lcom/android/athome/picker/MediaOutputSelector$3;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateDetailsIconVisibility()V

    .line 246
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->volume_details_section:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mVolumeDetailSection:Landroid/view/ViewGroup;

    .line 247
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->active_output_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    .line 248
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    const/high16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 251
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->speakers:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakerSection:Landroid/view/ViewGroup;

    .line 252
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->speaker_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    .line 253
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    const/high16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 254
    const-string v8, "speaker"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 256
    .local v5, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    if-eqz v5, :cond_1da

    .line 257
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v0, v8, v9, v10}, Lcom/android/athome/picker/MediaOutputAdapter;-><init>(Landroid/content/Context;II)V

    .line 260
    .local v0, adapter:Lcom/android/athome/picker/MediaOutputAdapter;
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-direct {p0, v0, v5}, Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 262
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Lcom/android/athome/picker/MediaOutputAdapter;->setView(Landroid/widget/AdapterView;)V

    .line 263
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    new-instance v9, Lcom/android/athome/picker/MediaOutputSelector$4;

    invoke-direct {v9, p0, v0}, Lcom/android/athome/picker/MediaOutputSelector$4;-><init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    .end local v0           #adapter:Lcom/android/athome/picker/MediaOutputAdapter;
    :goto_111
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->at_home_section:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    .line 276
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->icon_group_editing_done:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupEditingDone:Landroid/widget/Button;

    .line 278
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupEditingDone:Landroid/widget/Button;

    new-instance v9, Lcom/android/athome/picker/MediaOutputSelector$5;

    invoke-direct {v9, p0}, Lcom/android/athome/picker/MediaOutputSelector$5;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->at_home_group_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupList:Landroid/widget/ListView;

    .line 289
    const-string v8, "athome_group"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 291
    .local v2, atHomeGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    if-eqz v2, :cond_1e3

    .line 292
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupList:Landroid/widget/ListView;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v2, v9}, Lcom/android/athome/picker/MediaOutputSelector;->configureGroupList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    .line 298
    :goto_14d
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->at_home_receiver_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    .line 299
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    const/high16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 300
    const-string v8, "Nexus Q"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 302
    .local v3, atHomeReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    if-eqz v3, :cond_1ec

    .line 303
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v3, v9}, Lcom/android/athome/picker/MediaOutputSelector;->configureReceiverList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    .line 310
    :goto_16e
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->user_route_section:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteSection:Landroid/view/ViewGroup;

    .line 312
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->user_route_groups:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupLayout:Landroid/view/ViewGroup;

    .line 313
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->user_route_group_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupList:Landroid/widget/ListView;

    .line 314
    const-string v8, "user_route_group"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 316
    .local v6, userRouteGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    if-eqz v6, :cond_1f5

    .line 317
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupList:Landroid/widget/ListView;

    const/16 v9, 0x3e8

    invoke-direct {p0, v8, v6, v9}, Lcom/android/athome/picker/MediaOutputSelector;->configureGroupList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    .line 323
    :goto_1a1
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->user_routes:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteReceiverLayout:Landroid/view/ViewGroup;

    .line 324
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    sget v9, Lcom/android/athome/picker/R$id;->user_route_list:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteList:Landroid/widget/ListView;

    .line 325
    const-string v8, "user_route"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 327
    .local v7, userRoutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    if-eqz v7, :cond_1fd

    .line 328
    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteList:Landroid/widget/ListView;

    const/16 v9, 0x3e8

    invoke-direct {p0, v8, v7, v9}, Lcom/android/athome/picker/MediaOutputSelector;->configureReceiverList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V

    .line 333
    :goto_1c8
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->setSelectedOutput()V

    .line 334
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateViewVisibility()V

    .line 335
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateLayoutHeight()V

    .line 336
    return-void

    .line 217
    .end local v2           #atHomeGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    .end local v3           #atHomeReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    .end local v4           #enableVolumeControl:Z
    .end local v5           #receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    .end local v6           #userRouteGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    .end local v7           #userRoutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    :cond_1d2
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    goto/16 :goto_33

    .line 220
    :cond_1d7
    const/4 v4, 0x0

    goto/16 :goto_38

    .line 271
    .restart local v4       #enableVolumeControl:Z
    .restart local v5       #receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    :cond_1da
    const-string v8, "MediaOutputSelector"

    const-string v9, "No speaker outputs are available."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_111

    .line 294
    .restart local v2       #atHomeGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    :cond_1e3
    const-string v8, "MediaOutputSelector"

    const-string v9, "No athome groups are available."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 306
    .restart local v3       #atHomeReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    :cond_1ec
    const-string v8, "MediaOutputSelector"

    const-string v9, "No individual athome receivers are passed in."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16e

    .line 319
    .restart local v6       #userRouteGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    :cond_1f5
    const-string v8, "MediaOutputSelector"

    const-string v9, "No user defined groups are available."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a1

    .line 330
    .restart local v7       #userRoutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    :cond_1fd
    const-string v8, "MediaOutputSelector"

    const-string v9, "No individual user defined receivers are passed in."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8
.end method

.method private editGroup(Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter "output"

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->isGroupSelected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 780
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    .line 781
    .local v0, group:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->contains(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 782
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->remove(Lcom/android/athome/picker/MediaOutput;)Z

    .line 784
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onOutputRemoved(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 791
    .end local v0           #group:Lcom/android/athome/picker/MediaOutputGroup;
    :cond_3a
    :goto_3a
    return-void

    .line 786
    .restart local v0       #group:Lcom/android/athome/picker/MediaOutputGroup;
    :cond_3b
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->add(Lcom/android/athome/picker/MediaOutput;)Z

    .line 788
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onOutputAdded(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V

    goto :goto_3a
.end method

.method private getIndividualOutputs(Lcom/android/athome/picker/MediaGroupAdapter;)Ljava/util/ArrayList;
    .registers 8
    .parameter "mediaGroupAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/athome/picker/MediaGroupAdapter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_4

    .line 375
    const/4 v4, 0x0

    .line 386
    :cond_3
    return-object v4

    .line 377
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaGroupAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 379
    invoke-virtual {p1, v1}, Lcom/android/athome/picker/MediaGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    .line 380
    .local v0, group:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/athome/picker/MediaOutput;

    .line 381
    .local v3, output:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 378
    .end local v3           #output:Lcom/android/athome/picker/MediaOutput;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->isGroupSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isGroupSelected()Z
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    instance-of v0, v0, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isOnSpeaker(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter "out"

    .prologue
    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private onStartVolumeDetailsChange()V
    .registers 6

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 851
    .local v0, selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    if-nez v0, :cond_7

    .line 864
    :goto_6
    return-void

    .line 854
    :cond_7
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    .line 855
    new-instance v1, Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/athome/picker/MediaOutputAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    .line 857
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 858
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/MediaOutputAdapter;->setMode(I)V

    .line 859
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 861
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/MediaOutputAdapter;->setView(Landroid/widget/AdapterView;)V

    .line 862
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/MediaOutputAdapter;->setVolumeSliderListener(Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;)V

    .line 863
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateViewVisibility()V

    goto :goto_6
.end method

.method private declared-synchronized selectOutput(Lcom/android/athome/picker/MediaOutputAdapter;Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter "adapter"
    .parameter "item"

    .prologue
    .line 417
    monitor-enter p0

    :try_start_1
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectedOutput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->clearSelected()V

    .line 420
    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    .line 421
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaOutputAdapter;->setSelectedOutput(Lcom/android/athome/picker/MediaOutput;)V

    .line 422
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    if-eqz v0, :cond_2a

    .line 423
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-interface {v0, p2}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onOutputSelected(Lcom/android/athome/picker/MediaOutput;)V

    .line 425
    :cond_2a
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    .line 426
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputSelector;->dismiss()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 427
    monitor-exit p0

    return-void

    .line 417
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized selectOutputGroup(Lcom/android/athome/picker/MediaGroupAdapter;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 6
    .parameter "adapter"
    .parameter "item"

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectedOutputGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->clearSelected()V

    .line 441
    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    .line 442
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaGroupAdapter;->setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 443
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    if-eqz v0, :cond_2a

    .line 444
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-interface {v0, p2}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onOutputSelected(Lcom/android/athome/picker/MediaOutput;)V

    .line 446
    :cond_2a
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    .line 447
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputSelector;->dismiss()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 448
    monitor-exit p0

    return-void

    .line 439
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSelectedOutput()V
    .registers 4

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 408
    .local v0, selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 409
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaGroupAdapter;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/MediaGroupAdapter;->setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 414
    :cond_2b
    :goto_2b
    return-void

    .line 410
    :cond_2c
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 412
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/MediaOutputAdapter;->setSelectedOutput(Lcom/android/athome/picker/MediaOutput;)V

    goto :goto_2b
.end method

.method private toggleMasterVolumeMute()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 701
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-nez v3, :cond_7

    .line 715
    :goto_6
    return-void

    .line 705
    :cond_7
    iget v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    if-ne v3, v1, :cond_25

    .line 706
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v4}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v4

    if-nez v4, :cond_23

    :goto_15
    invoke-virtual {v3, v1}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    .line 707
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v1, v2}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    .line 714
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    goto :goto_6

    :cond_23
    move v1, v2

    .line 706
    goto :goto_15

    .line 708
    :cond_25
    iget v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 709
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 710
    .local v0, selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_40

    :goto_34
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/MediaOutputGroup;->setIsMuted(Z)V

    .line 711
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-interface {v1, v0}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    .line 712
    invoke-direct {p0, v0}, Lcom/android/athome/picker/MediaOutputSelector;->updateVolumeDetailsView(Lcom/android/athome/picker/MediaOutputGroup;)V

    goto :goto_1f

    :cond_40
    move v1, v2

    .line 710
    goto :goto_34
.end method

.method private updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/athome/picker/MediaOutput;>;"
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/android/athome/picker/MediaOutput;>;"
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 488
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 490
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 491
    .local v1, output:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 495
    .end local v1           #output:Lcom/android/athome/picker/MediaOutput;
    :cond_1b
    sget-object v2, Lcom/android/athome/picker/MediaOutputSelector;->mOutputNameComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 498
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 499
    return-void
.end method

.method private updateDetailsIconVisibility()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    iget v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    if-nez v3, :cond_19

    .line 760
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 761
    .local v0, selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->size()I

    move-result v3

    if-le v3, v1, :cond_1a

    .line 762
    .local v1, showVolumeDetails:Z
    :goto_12
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDetailsIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1c

    :goto_16
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    .end local v0           #selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    .end local v1           #showVolumeDetails:Z
    :cond_19
    return-void

    .restart local v0       #selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    :cond_1a
    move v1, v2

    .line 761
    goto :goto_12

    .line 762
    .restart local v1       #showVolumeDetails:Z
    :cond_1c
    const/16 v2, 0x8

    goto :goto_16
.end method

.method private updateGroupAdapter(Ljava/util/ArrayList;Lcom/android/athome/picker/MediaGroupAdapter;)V
    .registers 6
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/MediaOutputGroup;",
            ">;",
            "Lcom/android/athome/picker/MediaGroupAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutputGroup;>;"
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/athome/picker/MediaGroupAdapter;->setNotifyOnChange(Z)V

    .line 393
    invoke-virtual {p2}, Lcom/android/athome/picker/MediaGroupAdapter;->clear()V

    .line 395
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutputGroup;

    .line 396
    .local v1, output:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-virtual {p2, v1}, Lcom/android/athome/picker/MediaGroupAdapter;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 400
    .end local v1           #output:Lcom/android/athome/picker/MediaOutputGroup;
    :cond_1b
    sget-object v2, Lcom/android/athome/picker/MediaOutputSelector;->mOutputNameComparator:Ljava/util/Comparator;

    invoke-virtual {p2, v2}, Lcom/android/athome/picker/MediaGroupAdapter;->sort(Ljava/util/Comparator;)V

    .line 403
    invoke-virtual {p2}, Lcom/android/athome/picker/MediaGroupAdapter;->notifyDataSetChanged()V

    .line 404
    return-void
.end method

.method private updateLayoutHeight()V
    .registers 1

    .prologue
    .line 607
    return-void
.end method

.method private updateMasterVolumeViews()V
    .registers 10

    .prologue
    const/16 v5, 0x65

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 719
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    if-nez v7, :cond_1d

    .line 721
    iput v4, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    .line 722
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 723
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 724
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 754
    :goto_19
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateDetailsIconVisibility()V

    .line 755
    return-void

    .line 726
    :cond_1d
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 727
    .local v0, group:Lcom/android/athome/picker/MediaOutputGroup;
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_66

    .line 728
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getIsMuted()Z

    move-result v1

    .line 731
    .local v1, groupMuted:Z
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    .line 732
    if-eqz v1, :cond_51

    move v2, v4

    .line 734
    .local v2, groupVolume:I
    :goto_37
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 736
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 737
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v1, :cond_5f

    :goto_45
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 739
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    if-nez v1, :cond_4d

    move v4, v6

    :cond_4d
    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_19

    .line 732
    .end local v2           #groupVolume:I
    :cond_51
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getVolume()F

    move-result v7

    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v2, v7

    goto :goto_37

    .line 737
    .restart local v2       #groupVolume:I
    :cond_5f
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    goto :goto_45

    .line 742
    .end local v1           #groupMuted:Z
    .end local v2           #groupVolume:I
    :cond_66
    iput v6, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I

    .line 744
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v3

    .line 745
    .local v3, volume:F
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 747
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 748
    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v8, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v8}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v8

    if-eqz v8, :cond_9d

    :goto_8b
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 751
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v7}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v7

    if-nez v7, :cond_a4

    :goto_98
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_19

    .line 748
    :cond_9d
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    goto :goto_8b

    :cond_a4
    move v6, v4

    .line 751
    goto :goto_98
.end method

.method private updateViewVisibility()V
    .registers 8

    .prologue
    const/16 v6, 0x3e8

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 523
    iget v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    packed-switch v1, :pswitch_data_170

    .line 601
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported UI mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_25
    return-void

    .line 525
    :pswitch_26
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    .line 526
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mVolumeDetailSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 528
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakerSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 534
    :goto_45
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 535
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 536
    .local v0, mode:I
    packed-switch v0, :pswitch_data_178

    .line 556
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow section UI mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0           #mode:I
    :goto_7c
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 563
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 564
    .restart local v0       #mode:I
    packed-switch v0, :pswitch_data_182

    .line 579
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow section UI mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 531
    .end local v0           #mode:I
    :cond_b5
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakerSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakersList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_45

    .line 538
    .restart local v0       #mode:I
    :pswitch_c0
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupEditingDone:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7c

    .line 544
    :pswitch_d5
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 547
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupEditingDone:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7c

    .line 550
    :pswitch_ea
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeGroupEditingDone:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7c

    .line 560
    .end local v0           #mode:I
    :cond_100
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7c

    .line 566
    .restart local v0       #mode:I
    :pswitch_107
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteReceiverLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_25

    .line 573
    :pswitch_11d
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteGroupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteReceiverLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_25

    .line 584
    .end local v0           #mode:I
    :cond_133
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_25

    .line 588
    :pswitch_13a
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    .line 589
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDetailsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mVolumeDetailSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    if-eqz v1, :cond_169

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_169

    .line 592
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 596
    :goto_158
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mSpeakerSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 597
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 598
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUserRouteSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_25

    .line 594
    :cond_169
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputsList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_158

    .line 523
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_26
        :pswitch_13a
    .end packed-switch

    .line 536
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_ea
        :pswitch_d5
    .end packed-switch

    .line 564
    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_107
        :pswitch_11d
        :pswitch_11d
    .end packed-switch
.end method

.method private updateVolumeDetailsView(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 5
    .parameter "selectedGroup"

    .prologue
    .line 694
    iget v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mActiveOutputAdapter:Lcom/android/athome/picker/MediaOutputAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 698
    :cond_13
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 169
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputSelector$Listener;

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/MediaOutputSelector;->setListener(Lcom/android/athome/picker/MediaOutputSelector$Listener;)V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "instanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;

    .line 180
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "instanceState"

    .prologue
    const/4 v7, 0x1

    .line 185
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/athome/picker/R$style;->Theme_Dialog:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 186
    .local v4, wrapper:Landroid/view/ContextThemeWrapper;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 189
    .local v1, helium:Landroid/view/LayoutInflater;
    sget v5, Lcom/android/athome/picker/R$layout;->media_output_selector:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputSelector;->configureUi(Landroid/os/Bundle;)V

    .line 191
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDialog:Landroid/app/AlertDialog;

    .line 194
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 197
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 198
    .local v3, window:Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 199
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 201
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/athome/picker/R$dimen;->volume_panel_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 202
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector;->mDialog:Landroid/app/AlertDialog;

    return-object v5
.end method

.method public onOutputRemoved(Lcom/android/athome/picker/MediaOutput;)V
    .registers 7
    .parameter "output"

    .prologue
    .line 893
    if-nez p1, :cond_3

    .line 911
    .end local p1
    :goto_2
    return-void

    .line 896
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    .line 897
    .local v2, type:I
    instance-of v3, p1, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v3, :cond_33

    .line 898
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 899
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaGroupAdapter;

    .line 900
    .local v1, groupAdapter:Lcom/android/athome/picker/MediaGroupAdapter;
    check-cast p1, Lcom/android/athome/picker/MediaOutputGroup;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/athome/picker/MediaGroupAdapter;->remove(Ljava/lang/Object;)V

    .line 901
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaGroupAdapter;->notifyDataSetChanged()V

    .line 910
    .end local v1           #groupAdapter:Lcom/android/athome/picker/MediaGroupAdapter;
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V

    goto :goto_2

    .line 904
    .restart local p1
    :cond_33
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 905
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputAdapter;

    .line 906
    .local v0, adapter:Lcom/android/athome/picker/MediaOutputAdapter;
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->remove(Ljava/lang/Object;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputAdapter;->notifyDataSetChanged()V

    goto :goto_2f
.end method

.method public setListener(Lcom/android/athome/picker/MediaOutputSelector$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;

    .line 120
    return-void
.end method
