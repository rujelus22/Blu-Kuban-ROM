.class public Landroid/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mFraction:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mValue:Ljava/lang/Object;

.field private mValueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FF)V
    .registers 5
    .parameter "fraction"
    .parameter "value"

    .prologue
    .line 149
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Landroid/animation/Keyframe;-><init>(FLjava/lang/Object;Ljava/lang/Class;)V

    .line 150
    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_6
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/Keyframe;-><init>(FLjava/lang/Object;Ljava/lang/Class;)V

    .line 70
    return-void

    .line 69
    :cond_a
    const-class v0, Ljava/lang/Object;

    goto :goto_6
.end method

.method private constructor <init>(FLjava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .parameter "fraction"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 51
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    .line 52
    iput-object p2, p0, Landroid/animation/Keyframe;->mValue:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe;
    .registers 5

    .prologue
    .line 237
    new-instance v0, Landroid/animation/Keyframe;

    iget v1, p0, Landroid/animation/Keyframe;->mFraction:F

    iget-object v2, p0, Landroid/animation/Keyframe;->mValue:Ljava/lang/Object;

    iget-object v3, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Landroid/animation/Keyframe;-><init>(FLjava/lang/Object;Ljava/lang/Class;)V

    .line 238
    .local v0, kfClone:Landroid/animation/Keyframe;
    iget-object v1, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Landroid/animation/Keyframe;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/animation/Keyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .parameter "interpolator"

    .prologue
    .line 221
    iput-object p1, p0, Landroid/animation/Keyframe;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 222
    return-void
.end method
