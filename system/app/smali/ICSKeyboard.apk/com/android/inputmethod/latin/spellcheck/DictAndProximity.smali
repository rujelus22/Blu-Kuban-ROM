.class public Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
.super Ljava/lang/Object;
.source "DictAndProximity.java"


# instance fields
.field public final mDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field public final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/Dictionary;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .registers 3
    .parameter "dictionary"
    .parameter "proximityInfo"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 30
    iput-object p2, p0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 31
    return-void
.end method
