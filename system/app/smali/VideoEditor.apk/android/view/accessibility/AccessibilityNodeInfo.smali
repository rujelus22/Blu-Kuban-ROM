.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_SELECT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final PROPERTY_CHECKABLE:I = 0x1

.field private static final PROPERTY_CHECKED:I = 0x2

.field private static final PROPERTY_CLICKABLE:I = 0x20

.field private static final PROPERTY_ENABLED:I = 0x80

.field private static final PROPERTY_FOCUSABLE:I = 0x4

.field private static final PROPERTY_FOCUSED:I = 0x8

.field private static final PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final PROPERTY_PASSWORD:I = 0x100

.field private static final PROPERTY_SCROLLABLE:I = 0x200

.field private static final PROPERTY_SELECTED:I = 0x10

.field private static sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private mAccessibilityViewId:I

.field private mAccessibilityWindowId:I

.field private mActions:I

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildAccessibilityIds:Landroid/util/SparseIntArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIsInPool:Z

.field private mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentAccessibilityViewId:I

.field private mSealed:Z

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    .line 1143
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 111
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 112
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 132
    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private canPerformRequestOverConnection(I)Z
    .registers 4
    .parameter "accessibilityViewId"

    .prologue
    const/4 v1, -0x1

    .line 1051
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    if-eq v0, v1, :cond_d

    if-eq p1, v1, :cond_d

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private clear()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1013
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 1014
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 1015
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 1016
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 1017
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 1018
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1019
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1020
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1021
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 1022
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 1023
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 1024
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 1025
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 1026
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 1027
    return-void
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 4
    .parameter "action"

    .prologue
    .line 1036
    packed-switch p0, :pswitch_data_28

    .line 1046
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :pswitch_1c
    const-string v0, "ACTION_FOCUS"

    .line 1044
    :goto_1e
    return-object v0

    .line 1040
    :pswitch_1f
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1e

    .line 1042
    :pswitch_22
    const-string v0, "ACTION_SELECT"

    goto :goto_1e

    .line 1044
    :pswitch_25
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1e

    .line 1036
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .parameter "property"

    .prologue
    .line 737
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter "other"

    .prologue
    .line 951
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 952
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 953
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 954
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 955
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 956
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 957
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 958
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 959
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 960
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 961
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 962
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 963
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 964
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 965
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .parameter "parcel"

    .prologue
    const/4 v4, 0x1

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_11

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 977
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_3e

    :goto_17
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 982
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 983
    .local v1, childIds:Landroid/util/SparseIntArray;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 984
    .local v2, childrenSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    if-ge v3, v2, :cond_40

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 986
    .local v0, childId:I
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 977
    .end local v0           #childId:I
    .end local v1           #childIds:Landroid/util/SparseIntArray;
    .end local v2           #childrenSize:I
    .end local v3           #i:I
    :cond_3e
    const/4 v4, 0x0

    goto :goto_17

    .line 989
    .restart local v1       #childIds:Landroid/util/SparseIntArray;
    .restart local v2       #childrenSize:I
    .restart local v3       #i:I
    :cond_40
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 990
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 991
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 992
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 994
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 995
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 996
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 997
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 1003
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 1004
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 1005
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 1006
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 1007
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 846
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 847
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_1d

    .line 848
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 849
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 850
    sget v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    .line 851
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 852
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    .line 853
    monitor-exit v2

    .line 855
    .end local v0           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    monitor-exit v2

    goto :goto_1c

    .line 856
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .parameter "source"

    .prologue
    .line 835
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 836
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 837
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .parameter "info"

    .prologue
    .line 868
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 869
    .local v0, infoClone:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 870
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .parameter "property"
    .parameter "value"

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 750
    if-eqz p2, :cond_b

    .line 751
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 755
    :goto_a
    return-void

    .line 753
    :cond_b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_a
.end method


# virtual methods
.method public addAction(I)V
    .registers 3
    .parameter "action"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 235
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 236
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 203
    .local v0, childAccessibilityViewId:I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 204
    .local v1, index:I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .registers 3

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 821
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on an sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_e
    return-void
.end method

.method protected enforceSealed()V
    .registers 3

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1058
    if-ne p0, p1, :cond_5

    .line 1074
    :cond_4
    :goto_4
    return v1

    .line 1061
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 1062
    goto :goto_4

    .line 1064
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 1065
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 1067
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1068
    .local v0, other:Landroid/view/accessibility/AccessibilityNodeInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 1069
    goto :goto_4

    .line 1071
    :cond_20
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1072
    goto :goto_4
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 276
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 280
    :goto_f
    return-object v1

    .line 279
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 280
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewText(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    goto :goto_f
.end method

.method public getActions()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "outBounds"

    .prologue
    .line 327
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "outBounds"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .parameter "index"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 179
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 180
    .local v0, childAccessibilityViewId:I
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 181
    const/4 v2, 0x0

    .line 184
    :goto_10
    return-object v2

    .line 183
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 184
    .local v1, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(Landroid/accessibilityservice/IAccessibilityServiceConnection;II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_10
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 296
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 297
    const/4 v1, 0x0

    .line 300
    :goto_c
    return-object v1

    .line 299
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 300
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(Landroid/accessibilityservice/IAccessibilityServiceConnection;II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_c
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWindowId()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1079
    const/16 v0, 0x1f

    .line 1080
    .local v0, prime:I
    const/4 v1, 0x1

    .line 1081
    .local v1, result:I
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    add-int/lit8 v1, v2, 0x1f

    .line 1082
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    add-int v1, v2, v3

    .line 1083
    return v1
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .prologue
    .line 506
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 556
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 431
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 456
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    .prologue
    .line 531
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .prologue
    .line 581
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .prologue
    .line 606
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 481
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 6
    .parameter "action"

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 252
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 253
    const/4 v1, 0x0

    .line 256
    :goto_c
    return v1

    .line 255
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 256
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(Landroid/accessibilityservice/IAccessibilityServiceConnection;III)Z

    move-result v1

    goto :goto_c
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 881
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    if-eqz v0, :cond_c

    .line 882
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Info already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_c
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    .line 885
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_12
    sget v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    const/16 v2, 0x32

    if-gt v0, v2, :cond_27

    .line 887
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 888
    sput-object p0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    .line 890
    sget v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    .line 892
    :cond_27
    monitor-exit v1

    .line 893
    return-void

    .line 892
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "bounds"

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 345
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "bounds"

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 372
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3
    .parameter "checkable"

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 398
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 422
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 423
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 675
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 676
    return-void
.end method

.method public setClickable(Z)V
    .registers 3
    .parameter "clickable"

    .prologue
    .line 522
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 523
    return-void
.end method

.method public final setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 766
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 767
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "contentDescription"

    .prologue
    .line 726
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 727
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 728
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 572
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 573
    return-void
.end method

.method public setFocusable(Z)V
    .registers 3
    .parameter "focusable"

    .prologue
    .line 447
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 448
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .parameter "focused"

    .prologue
    .line 472
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 473
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3
    .parameter "longClickable"

    .prologue
    .line 547
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 548
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 649
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 650
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 319
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .parameter "password"

    .prologue
    .line 597
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 598
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .parameter "scrollable"

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 623
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 624
    return-void
.end method

.method public setSealed(Z)V
    .registers 2
    .parameter "sealed"

    .prologue
    .line 784
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 785
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .parameter "selected"

    .prologue
    .line 497
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 498
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 143
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 701
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 702
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; boundsInParent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; boundsInScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v3, "; packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v3, "; className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v3, "; text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v3, "; contentDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1113
    const-string v3, "; checkable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1114
    const-string v3, "; checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1115
    const-string v3, "; focusable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1116
    const-string v3, "; focused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1117
    const-string v3, "; selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1118
    const-string v3, "; clickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1119
    const-string v3, "; longClickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1120
    const-string v3, "; enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1121
    const-string v3, "; password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; scrollable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v3, "; ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .local v1, actionBits:I
    :cond_fe
    :goto_fe
    if-eqz v1, :cond_119

    .line 1127
    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int v0, v3, v4

    .line 1128
    .local v0, action:I
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v1, v3

    .line 1129
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    if-eqz v1, :cond_fe

    .line 1131
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 1135
    .end local v0           #action:I
    :cond_119
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 903
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-nez v5, :cond_37

    .line 904
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    :goto_9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v5

    if-eqz v5, :cond_44

    :goto_f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 915
    .local v0, childIds:Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 916
    .local v1, childIdsSize:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v1, :cond_46

    .line 918
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 906
    .end local v0           #childIds:Landroid/util/SparseIntArray;
    .end local v1           #childIdsSize:I
    .end local v2           #i:I
    :cond_37
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :cond_44
    move v3, v4

    .line 909
    goto :goto_f

    .line 921
    .restart local v0       #childIds:Landroid/util/SparseIntArray;
    .restart local v1       #childIdsSize:I
    .restart local v2       #i:I
    :cond_46
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 936
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 937
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 938
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 942
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 943
    return-void
.end method
