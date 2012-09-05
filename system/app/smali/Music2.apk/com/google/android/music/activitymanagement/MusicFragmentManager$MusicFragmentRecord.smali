.class Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
.super Ljava/lang/Object;
.source "MusicFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicFragmentRecord"
.end annotation


# instance fields
.field private mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

.field private final mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicFragmentManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/MusicFragmentManager;Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 4
    .parameter
    .parameter "fragment"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->this$0:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 232
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V

    return-void
.end method

.method private initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 236
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicState;->equals(Lcom/google/android/music/activitymanagement/MusicState;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 238
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 240
    :cond_11
    return-void
.end method

.method private onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 244
    return-void
.end method


# virtual methods
.method public moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 6
    .parameter "desiredState"
    .parameter "appState"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_c

    .line 248
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-eq p1, v0, :cond_b

    .line 249
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 314
    :cond_b
    :goto_b
    return-void

    .line 253
    :cond_c
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_31

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not go to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_31
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_4e

    .line 263
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-eq v0, v1, :cond_43

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should only go to created state from NONE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_43
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 267
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 313
    :cond_4b
    :goto_4b
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    goto :goto_b

    .line 268
    :cond_4e
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_a9

    .line 269
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_61

    .line 270
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    goto :goto_4b

    .line 272
    :cond_61
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_70

    .line 273
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    goto :goto_4b

    .line 275
    :cond_70
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_84

    .line 276
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 277
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    goto :goto_4b

    .line 280
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not go from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_a9
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_f8

    .line 284
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_b9

    .line 285
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    goto :goto_4b

    .line 286
    :cond_b9
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_c8

    .line 290
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 291
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_4b

    .line 292
    :cond_c8
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_d3

    .line 293
    invoke-direct {p0, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->initializeNewState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto/16 :goto_4b

    .line 295
    :cond_d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not go from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_f8
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v0, :cond_4b

    .line 299
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->markForFinishing()V

    .line 300
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-eq v0, v1, :cond_10d

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_117

    .line 301
    :cond_10d
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 311
    :cond_112
    :goto_112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    goto/16 :goto_4b

    .line 302
    :cond_117
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v0, v1, :cond_128

    .line 303
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    goto :goto_112

    .line 305
    :cond_128
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-eq v0, v1, :cond_112

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not go from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
