.class public Lcom/google/android/apps/docs/editors/text/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# static fields
.field private static C:I

.field private static final a:Landroid/graphics/RectF;

.field private static final a:Landroid/text/BoringLayout$Metrics;

.field private static final a:Landroid/text/Spanned;

.field private static final a:[Landroid/text/InputFilter;

.field private static b:Landroid/graphics/Rect;

.field private static final b:[I

.field private static c:J


# instance fields
.field private A:I

.field private B:I

.field private a:F

.field private a:I

.field private a:J

.field private a:LCD;

.field private final a:LCJ;

.field private a:LCV;

.field private a:LCW;

.field private a:LCX;

.field private a:LCY;

.field private a:LCd;

.field public a:LCl;

.field private a:LDH;

.field private a:LDb;

.field a:LDd;

.field a:LDe;

.field private a:LDi;

.field private a:LDj;

.field private a:LDp;

.field private a:LEd;

.field private a:LEe;

.field private final a:Landroid/content/Context;

.field private a:Landroid/content/res/ColorStateList;

.field private final a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Path;

.field public a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/text/Editable$Factory;

.field private a:Landroid/text/Spannable$Factory;

.field private final a:Landroid/text/TextPaint;

.field private a:Landroid/text/TextUtils$TruncateAt;

.field private a:Landroid/text/method/KeyListener;

.field private a:Landroid/view/ActionMode$Callback;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/Scroller;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field public final a:[I

.field private final a:[Landroid/graphics/drawable/Drawable;

.field private b:F

.field private b:I

.field private b:J

.field private b:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/text/BoringLayout$Metrics;

.field private b:Ljava/lang/CharSequence;

.field private b:Z

.field private b:[Landroid/text/InputFilter;

.field private c:F

.field private c:I

.field private c:Landroid/content/res/ColorStateList;

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Z

.field private e:F

.field private e:I

.field private e:Z

.field private final f:I

.field private f:Z

.field private final g:I

.field private g:Z

.field private final h:I

.field private h:Z

.field private final i:I

.field private i:Z

.field private final j:I

.field private j:Z

.field private final k:I

.field private k:Z

.field private l:I

.field private l:Z

.field private m:I

.field private m:Z

.field private n:I

.field private n:Z

.field private final o:I

.field private o:Z

.field private p:I

.field private p:Z

.field private q:I

.field private q:Z

.field private r:I

.field private r:Z

.field private s:I

.field private s:Z

.field private t:I

.field private t:Z

.field private u:I

.field private u:Z

.field private v:I

.field private v:Z

.field private w:I

.field private w:Z

.field private x:I

.field private x:Z

.field private y:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 273
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5134
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    .line 8826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/graphics/Rect;

    .line 8863
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    .line 8879
    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/text/InputFilter;

    .line 8881
    new-instance v0, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spanned;

    .line 8882
    const/16 v0, 0x14

    sput v0, Lcom/google/android/apps/docs/editors/text/TextView;->C:I

    .line 8889
    new-array v0, v3, [I

    const v1, 0x101034d

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/editors/text/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v0, LCJ;

    invoke-direct {v0}, LCJ;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCJ;

    .line 152
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/View$OnClickListener;

    .line 155
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    .line 157
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    .line 167
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    .line 169
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:Z

    .line 170
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:Z

    .line 172
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Editable$Factory;

    .line 173
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spannable$Factory;

    .line 180
    iput v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    .line 182
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    .line 205
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    .line 207
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    .line 208
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:Z

    .line 213
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:I

    .line 242
    sget v0, LCz;->text_select_handle_left:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:I

    .line 243
    sget v0, LCz;->text_select_handle_right:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:I

    .line 244
    sget v0, LCz;->text_select_handle_middle:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->h:I

    .line 245
    sget v0, LCB;->text_edit_paste_window:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:I

    .line 246
    sget v0, LCB;->text_edit_no_paste_window:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->j:I

    .line 249
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    .line 263
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:Z

    .line 8778
    sget-object v0, LCW;->a:LCW;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCW;

    .line 8780
    iput v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    .line 8788
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    .line 8794
    const v0, -0x7fa83f18

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    .line 8806
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:Z

    .line 8820
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:Z

    .line 8821
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:Z

    .line 8822
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:Z

    .line 8828
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:Z

    .line 8830
    const/16 v0, 0x33

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    .line 8834
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:Z

    .line 8836
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:F

    .line 8837
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:F

    .line 8838
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    .line 8840
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:Z

    .line 8846
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    .line 8847
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    .line 8848
    iput v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    .line 8849
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    .line 8851
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    .line 8852
    iput v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    .line 8853
    iput v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    .line 8854
    iput v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    .line 8857
    iput v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->B:I

    .line 8858
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:Z

    .line 8862
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 8872
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    .line 8880
    sget-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    .line 309
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    .line 313
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDH;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    .line 325
    iput-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    .line 331
    const/16 v7, 0xf

    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->i()Z

    .line 395
    const/4 v0, 0x0

    .line 408
    const-string v8, ""

    .line 424
    const v1, 0x20001

    .line 425
    sget v6, LCz;->text_cursor:I

    iput v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:I

    .line 756
    sget-object v6, LCW;->c:LCW;

    .line 764
    if-eqz v4, :cond_178

    .line 768
    :try_start_d9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d9 .. :try_end_e0} :catch_15e

    move-result-object v0

    .line 774
    :try_start_e1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;
    :try_end_e9
    .catch Ljava/lang/InstantiationException; {:try_start_e1 .. :try_end_e9} :catch_165
    .catch Ljava/lang/IllegalAccessException; {:try_start_e1 .. :try_end_e9} :catch_16c

    .line 781
    :try_start_e9
    iput v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I
    :try_end_eb
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_e9 .. :try_end_eb} :catch_173

    :goto_eb
    move-object v0, v6

    move v1, v3

    .line 871
    :goto_ed
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 873
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->setCompoundDrawablePadding(I)V

    .line 878
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)V

    .line 879
    invoke-direct {p0, v1, v1, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ZZZ)V

    .line 881
    if-eqz v1, :cond_1c5

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-nez v1, :cond_1c5

    .line 882
    const/4 v1, 0x3

    .line 885
    :goto_100
    packed-switch v1, :pswitch_data_1c8

    .line 901
    :goto_103
    if-eqz v4, :cond_1ba

    move-object v1, v4

    :goto_106
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 902
    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 903
    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 907
    int-to-float v1, v7

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(F)V

    .line 912
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit16 v1, v1, 0xfff

    const/16 v4, 0x81

    if-ne v1, v4, :cond_1c2

    .line 913
    const/4 v1, 0x3

    .line 916
    :goto_11c
    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/docs/editors/text/TextView;->b(II)V

    .line 925
    sget-object v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/text/InputFilter;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 928
    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 938
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-nez v0, :cond_12f

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_130

    :cond_12f
    move v3, v2

    .line 965
    :cond_130
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setFocusable(Z)V

    .line 966
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setClickable(Z)V

    .line 967
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->setLongClickable(Z)V

    .line 969
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 971
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 973
    mul-int/2addr v0, v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:I

    .line 976
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_15d

    .line 977
    new-instance v0, LCR;

    invoke-direct {v0, p0}, LCR;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 991
    new-instance v0, LCS;

    invoke-direct {v0, p0}, LCS;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1001
    :cond_15d
    return-void

    .line 769
    :catch_15e
    move-exception v0

    .line 770
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 775
    :catch_165
    move-exception v0

    .line 776
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 777
    :catch_16c
    move-exception v0

    .line 778
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 782
    :catch_173
    move-exception v0

    .line 783
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    goto/16 :goto_eb

    .line 785
    :cond_178
    if-eqz v4, :cond_18b

    .line 786
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDD;->a(Ljava/lang/String;)LDD;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    move v0, v1

    .line 790
    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    move-object v0, v6

    move v1, v3

    goto/16 :goto_ed

    .line 792
    :cond_18b
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IZ)V

    .line 795
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->c(I)Z

    move-result v0

    if-nez v0, :cond_199

    move v0, v2

    :goto_195
    move v1, v0

    move-object v0, v6

    goto/16 :goto_ed

    :cond_199
    move v0, v3

    goto :goto_195

    .line 887
    :pswitch_19b
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_103

    .line 890
    :pswitch_1a2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_103

    .line 893
    :pswitch_1a9
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_103

    .line 896
    :pswitch_1b0
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 897
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_103

    .line 901
    :cond_1ba
    const/high16 v1, -0x100

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_106

    :cond_1c2
    move v1, v5

    goto/16 :goto_11c

    :cond_1c5
    move v1, v5

    goto/16 :goto_100

    .line 885
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_19b
        :pswitch_1a2
        :pswitch_1a9
        :pswitch_1b0
    .end packed-switch
.end method

.method private A()V
    .registers 1

    .prologue
    .line 5342
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 5343
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 5344
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5345
    return-void
.end method

.method private A()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 7003
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 7058
    :goto_a
    return v0

    .line 7007
    :cond_b
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7012
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()Z

    move-result v0

    goto :goto_a

    .line 7015
    :cond_16
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit8 v0, v0, 0xf

    .line 7016
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit16 v1, v1, 0xff0

    .line 7019
    const/4 v4, 0x2

    if-eq v0, v4, :cond_33

    const/4 v4, 0x3

    if-eq v0, v4, :cond_33

    const/4 v4, 0x4

    if-eq v0, v4, :cond_33

    const/16 v0, 0x10

    if-eq v1, v0, :cond_33

    const/16 v0, 0x20

    if-eq v1, v0, :cond_33

    const/16 v0, 0xb0

    if-ne v1, v0, :cond_38

    .line 7023
    :cond_33
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()Z

    move-result v0

    goto :goto_a

    .line 7026
    :cond_38
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()J

    move-result-wide v0

    .line 7027
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(J)I

    move-result v4

    .line 7028
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(J)I

    move-result v5

    .line 7030
    if-ltz v4, :cond_48

    if-gez v5, :cond_4a

    :cond_48
    move v0, v2

    .line 7031
    goto :goto_a

    .line 7038
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v5, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 7039
    array-length v1, v0

    if-ne v1, v3, :cond_76

    .line 7040
    aget-object v2, v0, v2

    .line 7041
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 7042
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    move v2, v1

    move v1, v0

    .line 7057
    :goto_6d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v0, v3

    .line 7058
    goto :goto_a

    .line 7044
    :cond_76
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEe;

    if-nez v0, :cond_81

    .line 7045
    new-instance v0, LEe;

    invoke-direct {v0}, LEe;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEe;

    .line 7048
    :cond_81
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEe;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, LEe;->a(Ljava/lang/CharSequence;)V

    .line 7050
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEe;

    invoke-virtual {v0, v4}, LEe;->c(I)I

    move-result v1

    .line 7051
    if-ne v1, v6, :cond_93

    move v0, v2

    goto/16 :goto_a

    .line 7053
    :cond_93
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEe;

    invoke-virtual {v0, v5}, LEe;->d(I)I

    move-result v0

    .line 7054
    if-ne v0, v6, :cond_9e

    move v0, v2

    goto/16 :goto_a

    :cond_9e
    move v2, v1

    move v1, v0

    goto :goto_6d
.end method

.method private B()V
    .registers 3

    .prologue
    .line 5853
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_5

    .line 5865
    :cond_4
    :goto_4
    return-void

    .line 5855
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5859
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v0}, LDj;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5862
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-nez v0, :cond_4a

    new-instance v0, LDj;

    invoke-direct {v0, p0}, LDj;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    .line 5863
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:I

    invoke-virtual {v0, v1}, LDj;->a(I)V

    goto :goto_4
.end method

.method private B()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 7468
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v1, :cond_6

    .line 7493
    :cond_5
    :goto_5
    return v0

    .line 7473
    :cond_6
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 7474
    :cond_12
    const-string v1, "TextView"

    const-string v2, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 7478
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->A()Z

    move-result v1

    .line 7479
    if-eqz v1, :cond_5

    .line 7484
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/content/Context;Lcom/google/android/apps/docs/editors/text/TextView;)LCD;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    .line 7485
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    .line 7487
    :cond_2d
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-nez v1, :cond_5

    .line 7490
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->i()V

    goto :goto_5
.end method

.method private C()V
    .registers 2

    .prologue
    .line 5868
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v0}, LDj;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5869
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v0}, LDj;->b()V

    .line 5871
    :cond_11
    return-void
.end method

.method private D()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6631
    .line 6633
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6634
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_67

    .line 6635
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 6636
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1d

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v0, v3, :cond_61

    :cond_1d
    move v0, v2

    :goto_1e
    move v3, v0

    .line 6641
    :goto_1f
    if-eqz v3, :cond_63

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->t()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_63

    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:Z

    .line 6642
    if-eqz v3, :cond_65

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->y()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_65

    :goto_3a
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:Z

    .line 6644
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:Z

    if-nez v0, :cond_4e

    .line 6645
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->F()V

    .line 6646
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    if-eqz v0, :cond_4e

    .line 6647
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    invoke-virtual {v0}, LDi;->d()V

    .line 6648
    iput-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    .line 6652
    :cond_4e
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:Z

    if-nez v0, :cond_60

    .line 6653
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    .line 6654
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v0, :cond_60

    .line 6655
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0}, LDp;->d()V

    .line 6656
    iput-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    .line 6659
    :cond_60
    return-void

    :cond_61
    move v0, v1

    .line 6636
    goto :goto_1e

    :cond_63
    move v0, v1

    .line 6641
    goto :goto_2c

    :cond_65
    move v2, v1

    .line 6642
    goto :goto_3a

    :cond_67
    move v3, v1

    goto :goto_1f
.end method

.method private E()V
    .registers 7

    .prologue
    .line 6764
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->t()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6765
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->w()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6766
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:J

    .line 6767
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    if-nez v0, :cond_1d

    new-instance v0, LCV;

    invoke-direct {v0, p0}, LCV;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    .line 6768
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    invoke-virtual {v0, v1}, LCV;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6769
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    iget-wide v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, LCV;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 6774
    :cond_30
    :goto_30
    return-void

    .line 6772
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    invoke-virtual {v0, v1}, LCV;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_30
.end method

.method private F()V
    .registers 2

    .prologue
    .line 8561
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    if-eqz v0, :cond_9

    .line 8562
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    invoke-virtual {v0}, LDi;->c()V

    .line 8564
    :cond_9
    return-void
.end method

.method private G()V
    .registers 2

    .prologue
    .line 8571
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->F()V

    .line 8572
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    .line 8573
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCJ;

    invoke-virtual {v0}, LCJ;->b()V

    .line 8574
    return-void
.end method

.method private a()I
    .registers 3

    .prologue
    .line 5263
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(LCl;Z)I

    move-result v0

    return v0
.end method

.method private a(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 4279
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 4399
    :goto_b
    return v0

    .line 4283
    :cond_c
    sparse-switch p1, :sswitch_data_f0

    .line 4348
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_ba

    .line 4350
    if-eqz p3, :cond_ed

    .line 4352
    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 4353
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v5, p0, v0, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_b5
    .catch Ljava/lang/AbstractMethodError; {:try_start_15 .. :try_end_21} :catch_af

    move-result v0

    .line 4355
    if-eqz v0, :cond_94

    .line 4362
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    move v0, v2

    goto :goto_b

    .line 4285
    :sswitch_29
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:Z

    .line 4286
    invoke-static {p2}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4291
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-eqz v0, :cond_4b

    .line 4294
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:LDl;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:LDl;

    invoke-interface {v0, p0, v1, p2}, LDl;->a(Lcom/google/android/apps/docs/editors/text/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4297
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput-boolean v3, v0, LDd;->a:Z

    move v0, v2

    .line 4299
    goto :goto_b

    .line 4306
    :cond_4b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_59

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4307
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5f

    move v0, v1

    .line 4308
    goto :goto_b

    :cond_5f
    move v0, v2

    .line 4310
    goto :goto_b

    .line 4316
    :sswitch_61
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:Z

    .line 4317
    invoke-static {p2}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4318
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 4319
    goto :goto_b

    .line 4325
    :sswitch_71
    invoke-static {p2}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4326
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 4327
    goto :goto_b

    .line 4330
    :cond_7f
    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 4331
    if-eqz v0, :cond_88

    .line 4332
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_88
    move v0, v2

    .line 4334
    goto :goto_b

    .line 4341
    :sswitch_8a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v0, :cond_f

    .line 4342
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    move v0, v2

    .line 4343
    goto/16 :goto_b

    .line 4362
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    move v0, v1

    .line 4366
    :goto_98
    if-eqz v0, :cond_ba

    .line 4367
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 4368
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v5, p0, v0, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4369
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    .line 4370
    if-eqz v0, :cond_ba

    move v0, v3

    goto/16 :goto_b

    .line 4358
    :catch_af
    move-exception v0

    .line 4362
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    move v0, v3

    .line 4363
    goto :goto_98

    .line 4362
    :catchall_b5
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    throw v0

    .line 4377
    :cond_ba
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_e8

    .line 4379
    if-eqz p3, :cond_d4

    .line 4381
    :try_start_c4
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v5, p0, v0, p3}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_cd
    .catch Ljava/lang/AbstractMethodError; {:try_start_c4 .. :try_end_cd} :catch_eb

    move-result v0

    .line 4383
    if-eqz v0, :cond_d3

    move v0, v2

    .line 4384
    goto/16 :goto_b

    :cond_d3
    move v3, v1

    .line 4391
    :cond_d4
    :goto_d4
    if-eqz v3, :cond_e8

    .line 4392
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v2, p0, v0, p1, p2}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 4393
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()V

    move v0, v4

    .line 4394
    goto/16 :goto_b

    :cond_e8
    move v0, v1

    .line 4399
    goto/16 :goto_b

    .line 4386
    :catch_eb
    move-exception v0

    goto :goto_d4

    :cond_ed
    move v0, v3

    goto :goto_98

    .line 4283
    nop

    :sswitch_data_f0
    .sparse-switch
        0x4 -> :sswitch_8a
        0x17 -> :sswitch_61
        0x3d -> :sswitch_71
        0x42 -> :sswitch_29
    .end sparse-switch
.end method

.method private static a(J)I
    .registers 4
    .parameter

    .prologue
    .line 6985
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(LCl;)I
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5099
    invoke-virtual {p0}, LCl;->a()I

    move-result v3

    .line 5100
    invoke-virtual {p0}, LCl;->a()Ljava/lang/CharSequence;

    move-result-object v4

    .line 5101
    const/4 v1, 0x0

    move v2, v0

    .line 5106
    :goto_b
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_22

    .line 5107
    invoke-virtual {p0, v2}, LCl;->i(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1f

    const/4 v0, -0x1

    .line 5114
    :goto_1e
    return v0

    .line 5106
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5110
    :cond_22
    :goto_22
    if-ge v0, v3, :cond_2f

    .line 5111
    invoke-virtual {p0, v0}, LCl;->f(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5110
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 5114
    :cond_2f
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1e
.end method

.method private a(LCl;Z)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 5267
    if-nez p1, :cond_4

    .line 5268
    const/4 v0, 0x0

    .line 5294
    :goto_3
    return v0

    .line 5271
    :cond_4
    invoke-virtual {p1}, LCl;->a()I

    move-result v1

    .line 5272
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v2

    add-int/2addr v2, v0

    .line 5273
    invoke-virtual {p1, v1}, LCl;->a(I)I

    move-result v0

    .line 5275
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 5276
    if-eqz v3, :cond_25

    .line 5277
    iget v4, v3, LDb;->g:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5278
    iget v3, v3, LDb;->h:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5281
    :cond_25
    add-int/2addr v0, v2

    .line 5283
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    .line 5284
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    if-ge v1, v2, :cond_39

    .line 5285
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    sub-int v1, v3, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5292
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    .line 5288
    :cond_42
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_39
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;Z)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v0

    return v0
.end method

.method private a(Z)I
    .registers 7
    .parameter

    .prologue
    .line 3302
    const/4 v0, 0x0

    .line 3303
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x70

    .line 3305
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 3307
    const/16 v3, 0x30

    if-eq v1, v3, :cond_25

    .line 3310
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3311
    invoke-virtual {v2}, LCl;->d()I

    move-result v2

    .line 3313
    if-ge v2, v3, :cond_25

    .line 3314
    const/16 v0, 0x50

    if-ne v1, v0, :cond_26

    .line 3315
    sub-int v0, v3, v2

    .line 3321
    :cond_25
    :goto_25
    return v0

    .line 3318
    :cond_26
    sub-int v0, v3, v2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method public static synthetic a()J
    .registers 2

    .prologue
    .line 142
    sget-wide v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:J

    return-wide v0
.end method

.method private static a(II)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 6981
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(IILjava/lang/CharSequence;)J
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 7264
    if-eqz p3, :cond_6a

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6a

    .line 7265
    if-lez p1, :cond_3d

    .line 7266
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7267
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 7269
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 7271
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7272
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7276
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 7277
    add-int/2addr p1, v0

    .line 7278
    add-int/2addr p2, v0

    .line 7291
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_6a

    .line 7292
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7293
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    invoke-interface {v1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 7295
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 7297
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, p2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7306
    :cond_6a
    :goto_6a
    invoke-static {p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)J

    move-result-wide v0

    return-wide v0

    .line 7279
    :cond_6f
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_3d

    if-eq v0, v3, :cond_3d

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_3d

    if-eq v1, v3, :cond_3d

    .line 7282
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7283
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    const-string v2, " "

    invoke-interface {v0, p1, p1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7285
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 7286
    add-int/2addr p1, v0

    .line 7287
    add-int/2addr p2, v0

    goto :goto_3d

    .line 7298
    :cond_98
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_6a

    if-eq v0, v3, :cond_6a

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_6a

    if-eq v1, v3, :cond_6a

    .line 7301
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    const-string v1, " "

    invoke-interface {v0, p2, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6a
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)LCJ;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCJ;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;LCY;)LCY;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)LDH;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic a()Landroid/graphics/RectF;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7646
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2d

    .line 7647
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v0, p1

    .line 7648
    check-cast v0, Landroid/text/Spanned;

    move v3, p2

    .line 7651
    :goto_d
    if-ge p2, p3, :cond_2b

    .line 7652
    const-class v1, LEk;

    invoke-interface {v0, v3, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p2

    .line 7653
    add-int/lit8 v1, v3, 0x1

    const-class v4, LEk;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LEk;

    .line 7654
    array-length v1, v1

    if-nez v1, :cond_29

    .line 7655
    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_29
    move v3, p2

    .line 7658
    goto :goto_d

    :cond_2b
    move-object v0, v2

    .line 7664
    :goto_2c
    return-object v0

    .line 7661
    :cond_2d
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2c
.end method

.method private a(F)V
    .registers 3
    .parameter

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 1743
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1745
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1c

    .line 1746
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 1748
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1751
    :cond_1c
    return-void
.end method

.method private a(IIIF)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 4091
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-nez v0, :cond_18

    .line 4092
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p1

    .line 4094
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_23

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    .line 4096
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4097
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4098
    sub-float v1, p4, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 4099
    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4100
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int/2addr v0, v1

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4102
    return-void
.end method

.method private a(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2947
    and-int/lit8 v2, p1, 0xf

    .line 2949
    if-ne v2, v0, :cond_30

    .line 2950
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_d

    move v1, v0

    .line 2952
    :cond_d
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1f

    .line 2953
    sget-object v0, LDX;->d:LDX;

    .line 2961
    :goto_13
    invoke-static {v1, v0}, LDW;->a(ZLDX;)LDW;

    move-result-object v0

    .line 2983
    :goto_17
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setRawInputType(I)V

    .line 2984
    if-eqz p2, :cond_69

    .line 2985
    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    .line 2989
    :goto_1e
    return-void

    .line 2954
    :cond_1f
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_26

    .line 2955
    sget-object v0, LDX;->c:LDX;

    goto :goto_13

    .line 2956
    :cond_26
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_2d

    .line 2957
    sget-object v0, LDX;->b:LDX;

    goto :goto_13

    .line 2959
    :cond_2d
    sget-object v0, LDX;->a:LDX;

    goto :goto_13

    .line 2962
    :cond_30
    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    .line 2963
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_41

    move v2, v0

    :goto_38
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_43

    :goto_3c
    invoke-static {v2, v0}, LDD;->a(ZZ)LDD;

    move-result-object v0

    goto :goto_17

    :cond_41
    move v2, v1

    goto :goto_38

    :cond_43
    move v0, v1

    goto :goto_3c

    .line 2966
    :cond_45
    const/4 v0, 0x4

    if-ne v2, v0, :cond_5c

    .line 2967
    and-int/lit16 v0, p1, 0xff0

    sparse-switch v0, :sswitch_data_6e

    .line 2975
    invoke-static {}, LDB;->a()LDB;

    move-result-object v0

    goto :goto_17

    .line 2969
    :sswitch_52
    invoke-static {}, LDA;->a()LDA;

    move-result-object v0

    goto :goto_17

    .line 2972
    :sswitch_57
    invoke-static {}, LEa;->a()LEa;

    move-result-object v0

    goto :goto_17

    .line 2978
    :cond_5c
    const/4 v0, 0x3

    if-ne v2, v0, :cond_64

    .line 2979
    invoke-static {}, LDC;->a()LDC;

    move-result-object v0

    goto :goto_17

    .line 2981
    :cond_64
    invoke-static {}, LDW;->a()LDW;

    move-result-object v0

    goto :goto_17

    .line 2987
    :cond_69
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/method/KeyListener;)V

    goto :goto_1e

    .line 2967
    nop

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_52
        0x20 -> :sswitch_57
    .end sparse-switch
.end method

.method private a(Landroid/content/ClipData;)V
    .registers 4
    .parameter

    .prologue
    .line 7620
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 7622
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 7623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:J

    .line 7624
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4105
    if-eqz p2, :cond_19

    const/4 v1, 0x1

    .line 4106
    :goto_5
    if-eqz v1, :cond_b

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4107
    :cond_b
    :goto_b
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-ge v0, v2, :cond_1b

    .line 4108
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4107
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    move v1, v0

    .line 4105
    goto :goto_5

    .line 4110
    :cond_1b
    if-eqz v1, :cond_22

    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4111
    :cond_22
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 5664
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()I

    move-result v0

    .line 5665
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 5666
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5668
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->q()I

    move-result v0

    .line 5669
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 5670
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5671
    return-void
.end method

.method private a(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5654
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/graphics/Rect;)V

    .line 5659
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5660
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5661
    :cond_21
    return-void
.end method

.method private a(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3280
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    instance-of v0, v0, Landroid/text/InputFilter;

    if-eqz v0, :cond_1b

    .line 3281
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 3283
    array-length v0, p2

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3284
    array-length v2, p2

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    check-cast v0, Landroid/text/InputFilter;

    aput-object v0, v1, v2

    .line 3286
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3290
    :goto_1a
    return-void

    .line 3288
    :cond_1b
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1a
.end method

.method static a(Landroid/text/Spannable;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4688
    const-class v0, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4689
    array-length v0, v1

    .line 4690
    :goto_7
    if-lez v0, :cond_11

    .line 4691
    add-int/lit8 v0, v0, -0x1

    .line 4692
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 4694
    :cond_11
    return-void
.end method

.method private a(Landroid/text/method/KeyListener;)V
    .registers 4
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    .line 1183
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1186
    return-void
.end method

.method private a(Landroid/view/DragEvent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 8659
    invoke-static {}, LCx;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8716
    :cond_7
    :goto_7
    return-void

    .line 8663
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8664
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 8665
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    move v0, v1

    .line 8666
    :goto_18
    if-ge v0, v4, :cond_2a

    .line 8667
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 8668
    iget-object v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 8666
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 8671
    :cond_2a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v4

    .line 8673
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    .line 8674
    const/4 v2, 0x0

    .line 8675
    instance-of v5, v0, LDa;

    if-eqz v5, :cond_44

    .line 8676
    check-cast v0, LDa;

    move-object v2, v0

    .line 8678
    :cond_44
    if-eqz v2, :cond_4c

    iget-object v0, v2, LDa;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    if-ne v0, p0, :cond_4c

    const/4 v0, 0x1

    move v1, v0

    .line 8680
    :cond_4c
    if-eqz v1, :cond_56

    .line 8681
    iget v0, v2, LDa;->a:I

    if-lt v4, v0, :cond_56

    iget v0, v2, LDa;->b:I

    if-lt v4, v0, :cond_7

    .line 8687
    :cond_56
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 8688
    invoke-direct {p0, v4, v4, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILjava/lang/CharSequence;)J

    move-result-wide v6

    .line 8689
    invoke-static {v6, v7}, Lcom/google/android/apps/docs/editors/text/TextView;->a(J)I

    move-result v4

    .line 8690
    invoke-static {v6, v7}, Lcom/google/android/apps/docs/editors/text/TextView;->b(J)I

    move-result v6

    .line 8692
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8693
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v4, v6, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8695
    if-eqz v1, :cond_7

    .line 8696
    iget v1, v2, LDa;->a:I

    .line 8697
    iget v0, v2, LDa;->b:I

    .line 8698
    if-gt v6, v1, :cond_c9

    .line 8700
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    .line 8701
    add-int/2addr v1, v2

    .line 8702
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 8706
    :goto_89
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 8709
    if-eqz v2, :cond_a0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_a0
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v2, v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8712
    :cond_b4
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v2, v0, :cond_be

    add-int/lit8 v2, v2, -0x1

    .line 8713
    :cond_be
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_7

    :cond_c9
    move v2, v1

    move v1, v0

    goto :goto_89
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 1
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->c(II)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 7627
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7630
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:J

    .line 7633
    return-void
.end method

.method private a(Ljava/lang/CharSequence;LCW;ZI)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x12

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2672
    if-nez p1, :cond_174

    .line 2673
    const-string v1, ""

    .line 2676
    :goto_8
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->j:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2678
    :cond_13
    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_2a

    move-object v0, v1

    check-cast v0, Landroid/text/Spanned;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2a

    .line 2679
    invoke-virtual {p0, v7}, Lcom/google/android/apps/docs/editors/text/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2680
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2683
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    array-length v9, v0

    move v8, v2

    .line 2684
    :goto_2e
    if-ge v8, v9, :cond_47

    .line 2685
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    aget-object v0, v0, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sget-object v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spanned;

    move v5, v2

    move v6, v2

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2686
    if-eqz v0, :cond_43

    move-object v1, v0

    .line 2684
    :cond_43
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2e

    .line 2691
    :cond_47
    if-eqz p3, :cond_5c

    .line 2692
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_ec

    .line 2693
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2694
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v0, v2, p4, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Ljava/lang/CharSequence;III)V

    .line 2702
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_171

    move v4, v7

    .line 2706
    :goto_69
    sget-object v0, LCW;->c:LCW;

    if-eq p2, v0, :cond_73

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-nez v0, :cond_73

    if-eqz v4, :cond_f7

    .line 2707
    :cond_73
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Editable$Factory;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    .line 2709
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2710
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_89

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2718
    :cond_89
    :goto_89
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:I

    if-eqz v0, :cond_bf

    .line 2721
    sget-object v0, LCW;->c:LCW;

    if-eq p2, v0, :cond_95

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_110

    :cond_95
    move-object v0, v1

    .line 2722
    check-cast v0, Landroid/text/Spannable;

    .line 2727
    :goto_98
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:I

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 2729
    sget-object v1, LCW;->c:LCW;

    if-ne p2, v1, :cond_117

    sget-object v1, LCW;->c:LCW;

    .line 2736
    :goto_a6
    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    .line 2741
    instance-of v3, p0, Lcom/google/android/apps/docs/editors/text/EditText;

    if-nez v3, :cond_b0

    iget-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-eqz v3, :cond_11a

    .line 2742
    :cond_b0
    :goto_b0
    iget-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:Z

    if-eqz v3, :cond_bd

    if-nez v7, :cond_bd

    .line 2743
    invoke-static {}, LDF;->a()LDH;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->setMovementMethod(LDH;)V

    :cond_bd
    move-object p2, v1

    move-object v1, v0

    .line 2748
    :cond_bf
    iput-object p2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCW;

    .line 2749
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    .line 2751
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    if-nez v0, :cond_11c

    .line 2752
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    .line 2756
    :goto_c9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2758
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_159

    move-object v0, v1

    .line 2759
    check-cast v0, Landroid/text/Spannable;

    .line 2763
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v5, LCX;

    invoke-interface {v0, v2, v3, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LCX;

    .line 2764
    array-length v7, v3

    move v5, v2

    .line 2765
    :goto_e2
    if-ge v5, v7, :cond_125

    .line 2766
    aget-object v8, v3, v5

    invoke-interface {v0, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2765
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    .line 2696
    :cond_ec
    const-string v0, ""

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Ljava/lang/CharSequence;III)V

    goto/16 :goto_5c

    .line 2712
    :cond_f7
    sget-object v0, LCW;->b:LCW;

    if-eq p2, v0, :cond_ff

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_106

    .line 2713
    :cond_ff
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    goto :goto_89

    .line 2714
    :cond_106
    instance-of v0, v1, LCd;

    if-nez v0, :cond_89

    .line 2715
    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_89

    .line 2724
    :cond_110
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_98

    .line 2729
    :cond_117
    sget-object v1, LCW;->b:LCW;

    goto :goto_a6

    :cond_11a
    move v7, v2

    .line 2741
    goto :goto_b0

    .line 2754
    :cond_11c
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    invoke-interface {v0, v1, p0}, LEd;->a(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    goto :goto_c9

    .line 2768
    :cond_125
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCX;

    if-nez v3, :cond_131

    new-instance v3, LCX;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, LCX;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    iput-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCX;

    .line 2770
    :cond_131
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCX;

    const v5, 0x640012

    invoke-interface {v0, v3, v2, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2773
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v3, :cond_142

    .line 2774
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    invoke-interface {v0, v3, v2, v6, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2777
    :cond_142
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    if-eqz v3, :cond_14b

    .line 2778
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    invoke-interface {v0, v3, v2, v6, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2782
    :cond_14b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_159

    .line 2783
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v3, p0, v0}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V

    .line 2790
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    .line 2794
    :cond_159
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_160

    .line 2795
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->A()V

    .line 2798
    :cond_160
    invoke-virtual {p0, v1, v2, p4, v6}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Ljava/lang/CharSequence;III)V

    .line 2799
    invoke-virtual {p0, v1, v2, p4, v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;III)V

    .line 2801
    if-eqz v4, :cond_16d

    .line 2802
    check-cast v1, Landroid/text/Editable;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Editable;)V

    .line 2807
    :cond_16d
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 2808
    return-void

    :cond_171
    move v4, v2

    goto/16 :goto_69

    :cond_174
    move-object v1, p1

    goto/16 :goto_8
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 5744
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 5745
    if-eqz p1, :cond_12

    .line 5746
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    .line 5751
    :cond_11
    :goto_11
    return-void

    .line 5748
    :cond_12
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    goto :goto_11
.end method

.method private a(ZZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 5755
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    .line 5756
    if-eqz p1, :cond_15

    .line 5757
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setLines(I)V

    .line 5758
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setHorizontallyScrolling(Z)V

    .line 5759
    if-eqz p2, :cond_14

    .line 5760
    invoke-static {}, LDV;->a()LDV;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setTransformationMethod(LEd;)V

    .line 5771
    :cond_14
    :goto_14
    return-void

    .line 5763
    :cond_15
    if-eqz p3, :cond_1d

    .line 5764
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setMaxLines(I)V

    .line 5766
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setHorizontallyScrolling(Z)V

    .line 5767
    if-eqz p2, :cond_14

    .line 5768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setTransformationMethod(LEd;)V

    goto :goto_14
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    instance-of v0, v0, LDL;

    return v0
.end method

.method private a(F)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    .line 5076
    invoke-static {}, LCx;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5095
    :cond_11
    :goto_11
    return v0

    .line 5079
    :cond_12
    cmpl-float v2, p1, v3

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()I

    move-result v2

    if-ne v2, v1, :cond_11

    iget-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->j:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_11

    .line 5081
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->f(I)F

    move-result v2

    .line 5082
    add-float/2addr v2, v4

    sub-float/2addr v2, p1

    div-float/2addr v2, p1

    .line 5083
    cmpl-float v3, v2, v3

    if-lez v3, :cond_11

    const v3, 0x3d8f5c29

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_11

    .line 5084
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    sub-float v2, v4, v2

    const v3, 0x3ba3d70a

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5085
    new-instance v0, LCT;

    invoke-direct {v0, p0}, LCT;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 5091
    goto :goto_11
.end method

.method private a(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 8622
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    if-nez v1, :cond_8

    .line 8629
    :cond_7
    :goto_7
    return v0

    .line 8624
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(I)I

    move-result v1

    .line 8625
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)I

    move-result v2

    .line 8627
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v4

    invoke-virtual {v4, v1}, LCl;->c(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 8628
    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v3

    invoke-virtual {v3, v1}, LCl;->d(I)F

    move-result v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_7

    .line 8629
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/text/TextView;)Z
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .registers 5
    .parameter

    .prologue
    .line 8594
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->i()I

    move-result v0

    sub-int v0, p1, v0

    .line 8596
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8597
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8598
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 8599
    return v0
.end method

.method private b(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 8612
    invoke-direct {p0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)I

    move-result v0

    .line 8613
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, LCl;->a(IF)I

    move-result v0

    return v0
.end method

.method private static b(J)I
    .registers 4
    .parameter

    .prologue
    .line 6989
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:I

    return v0
.end method

.method private b(Z)I
    .registers 7
    .parameter

    .prologue
    .line 3325
    const/4 v0, 0x0

    .line 3326
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x70

    .line 3328
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 3330
    const/16 v3, 0x50

    if-eq v1, v3, :cond_25

    .line 3333
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3334
    invoke-virtual {v2}, LCl;->d()I

    move-result v2

    .line 3336
    if-ge v2, v3, :cond_25

    .line 3337
    const/16 v0, 0x30

    if-ne v1, v0, :cond_26

    .line 3338
    sub-int v0, v3, v2

    .line 3344
    :cond_25
    :goto_25
    return v0

    .line 3341
    :cond_26
    sub-int v0, v3, v2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method private b()J
    .registers 3

    .prologue
    .line 7064
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:Z

    if-eqz v0, :cond_11

    .line 7065
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    .line 7066
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    .line 7073
    :goto_c
    invoke-static {v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)J

    move-result-wide v0

    return-wide v0

    .line 7068
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    .line 7069
    invoke-virtual {v0}, LDp;->a()I

    move-result v1

    .line 7070
    invoke-virtual {v0}, LDp;->b()I

    move-result v0

    goto :goto_c
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private b()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 7098
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1220
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_14

    .line 1221
    :cond_a
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setFocusable(Z)V

    .line 1222
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setClickable(Z)V

    .line 1223
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->setLongClickable(Z)V

    .line 1229
    :goto_13
    return-void

    .line 1225
    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setFocusable(Z)V

    .line 1226
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setClickable(Z)V

    .line 1227
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setLongClickable(Z)V

    goto :goto_13
.end method

.method private b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    packed-switch p1, :pswitch_data_12

    .line 1019
    :goto_4
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1020
    return-void

    .line 1007
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1011
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1015
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1005
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 1
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->F()V

    return-void
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4251
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-nez v2, :cond_7

    .line 4267
    :cond_6
    :goto_6
    return v0

    .line 4255
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-eqz v2, :cond_d

    move v0, v1

    .line 4256
    goto :goto_6

    .line 4259
    :cond_d
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_6

    .line 4260
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    and-int/lit16 v2, v2, 0xff0

    .line 4261
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x30

    if-ne v2, v3, :cond_6

    :cond_1f
    move v0, v1

    .line 4263
    goto :goto_6
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/text/TextView;)Z
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->j:I

    return v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2363
    .line 2364
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2365
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:I

    if-eq v0, v3, :cond_4f

    .line 2366
    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:I

    move v0, v1

    .line 2369
    :goto_13
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2c

    .line 2370
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2371
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    iget v4, v4, Landroid/text/TextPaint;->linkColor:I

    if-eq v3, v4, :cond_2c

    .line 2372
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    move v0, v1

    .line 2376
    :cond_2c
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_49

    .line 2377
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 2378
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:I

    if-eq v2, v3, :cond_49

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_49

    .line 2379
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:I

    move v0, v1

    .line 2383
    :cond_49
    if-eqz v0, :cond_4e

    .line 2384
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2386
    :cond_4e
    return-void

    :cond_4f
    move v0, v2

    goto :goto_13
.end method

.method private c(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7575
    invoke-static {}, LCx;->a()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 7576
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 7580
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 7581
    if-eqz v3, :cond_70

    move v2, v1

    .line 7583
    :goto_1a
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 7584
    invoke-virtual {v3, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 7585
    if-eqz v4, :cond_4b

    .line 7586
    if-nez v2, :cond_4f

    .line 7587
    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILjava/lang/CharSequence;)J

    move-result-wide v5

    .line 7588
    invoke-static {v5, v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(J)I

    move-result p1

    .line 7589
    invoke-static {v5, v6}, Lcom/google/android/apps/docs/editors/text/TextView;->b(J)I

    move-result p2

    .line 7590
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7591
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7592
    const/4 v2, 0x1

    .line 7583
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 7594
    :cond_4f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v5

    const-string v6, "\n"

    invoke-interface {v0, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7595
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v5

    invoke-interface {v0, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4b

    .line 7599
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    .line 7600
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:J

    .line 7617
    :cond_6f
    :goto_6f
    return-void

    .line 7605
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7609
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7610
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6f

    .line 7611
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILjava/lang/CharSequence;)J

    move-result-wide v2

    .line 7612
    invoke-static {v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(J)I

    move-result v4

    .line 7613
    invoke-static {v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->b(J)I

    move-result v2

    .line 7614
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7615
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v4, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6f
.end method

.method private c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 5874
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 5875
    if-eqz p1, :cond_c

    .line 5876
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()V

    .line 5881
    :cond_b
    :goto_b
    return-void

    .line 5878
    :cond_c
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->C()V

    goto :goto_b
.end method

.method private c(I)Z
    .registers 4
    .parameter

    .prologue
    .line 2876
    const v0, 0x2000f

    and-int/2addr v0, p1

    const v1, 0x20001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/text/TextView;)Z
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->w()Z

    move-result v0

    return v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->h:I

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 3251
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 3252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->h:Z

    .line 3253
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()V

    .line 3255
    :cond_10
    return-void
.end method

.method private d(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6099
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 6100
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    .line 6101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6102
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1b

    .line 6103
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 6106
    :cond_1b
    return-void
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/text/TextView;)Z
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()I

    move-result v0

    return v0
.end method

.method private e()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    .line 3348
    iget-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    if-eqz v2, :cond_b

    .line 3349
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()V

    .line 3386
    :cond_a
    :goto_a
    return-void

    .line 3351
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v2

    .line 3352
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v4

    add-int/2addr v3, v4

    .line 3354
    iget v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-nez v4, :cond_72

    .line 3355
    sget-object v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    monitor-enter v4

    .line 3364
    :try_start_20
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    .line 3365
    cmpg-float v5, v0, v1

    if-gez v5, :cond_2f

    move v0, v1

    .line 3369
    :cond_2f
    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 3371
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    sget-object v5, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3373
    int-to-float v1, v2

    sget-object v5, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    sub-float/2addr v1, v0

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v5, v3

    sget-object v6, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v0

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v2, v2

    sget-object v6, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    add-float/2addr v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v3

    sget-object v6, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    add-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v5, v2, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate(IIII)V

    .line 3377
    monitor-exit v4

    goto :goto_a

    :catchall_6f
    move-exception v0

    monitor-exit v4
    :try_end_71
    .catchall {:try_start_20 .. :try_end_71} :catchall_6f

    throw v0

    .line 3379
    :cond_72
    :goto_72
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-ge v0, v1, :cond_a

    .line 3380
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3381
    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate(IIII)V

    .line 3379
    add-int/lit8 v0, v0, 0x1

    goto :goto_72
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/editors/text/TextView;)Z
    .registers 2
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    return v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->q()I

    move-result v0

    return v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 3389
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    .line 3391
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(III)V

    .line 3392
    return-void
.end method

.method public static synthetic g(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:I

    return v0
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 4275
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->c(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static synthetic h(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:I

    return v0
.end method

.method private h()Z
    .registers 12

    .prologue
    const/16 v10, 0x50

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 5351
    .line 5352
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v10, :cond_de

    .line 5353
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5356
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 5357
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v3, v0}, LCl;->d(I)I

    move-result v3

    .line 5358
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5359
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v6

    sub-int/2addr v5, v6

    .line 5360
    iget-object v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v6}, LCl;->d()I

    move-result v6

    .line 5364
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_95

    .line 5370
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->c(I)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    .line 5371
    iget-object v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v7, v0}, LCl;->d(I)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    .line 5372
    iget-object v8, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v8, v0}, LCl;->q(I)I

    move-result v0

    .line 5374
    sub-int v8, v7, v2

    add-int/2addr v8, v0

    if-ge v8, v4, :cond_8e

    .line 5375
    add-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    :goto_79
    move v2, v0

    .line 5407
    :goto_7a
    if-ge v6, v5, :cond_d3

    move v0, v1

    .line 5417
    :goto_7d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v3

    if-ne v2, v3, :cond_89

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v3

    if-eq v0, v3, :cond_8d

    .line 5418
    :cond_89
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 5419
    const/4 v1, 0x1

    .line 5421
    :cond_8d
    return v1

    .line 5377
    :cond_8e
    if-ne v3, v9, :cond_93

    .line 5378
    sub-int v0, v7, v4

    goto :goto_79

    :cond_93
    move v0, v2

    .line 5380
    goto :goto_79

    .line 5383
    :cond_95
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_b6

    .line 5388
    if-ne v3, v9, :cond_a9

    .line 5389
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->d(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 5390
    sub-int/2addr v0, v4

    move v2, v0

    .line 5391
    goto :goto_7a

    .line 5392
    :cond_a9
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->c(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_7a

    .line 5399
    :cond_b6
    if-ne v3, v9, :cond_c5

    .line 5400
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->c(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_7a

    .line 5402
    :cond_c5
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->d(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 5403
    sub-int/2addr v0, v4

    move v2, v0

    goto :goto_7a

    .line 5410
    :cond_d3
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v10, :cond_dc

    .line 5411
    sub-int v0, v6, v5

    goto :goto_7d

    :cond_dc
    move v0, v1

    .line 5413
    goto :goto_7d

    :cond_de
    move v0, v1

    goto/16 :goto_12
.end method

.method public static synthetic i(Lcom/google/android/apps/docs/editors/text/TextView;)I
    .registers 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:I

    return v0
.end method

.method private p()I
    .registers 3

    .prologue
    .line 5674
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private q()I
    .registers 4

    .prologue
    .line 5678
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 5679
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_17

    .line 5680
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 5682
    :cond_17
    return v0
.end method

.method private r()I
    .registers 5

    .prologue
    .line 6442
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v0, :cond_49

    .line 6443
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0}, LDp;->a()I

    move-result v0

    .line 6444
    if-ltz v0, :cond_49

    .line 6446
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_48

    .line 6447
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6449
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6455
    :cond_48
    :goto_48
    return v0

    :cond_49
    const/4 v0, -0x1

    goto :goto_48
.end method

.method private t()Z
    .registers 2

    .prologue
    .line 5843
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private u()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5847
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5848
    if-lez v1, :cond_22

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->f(I)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method private v()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3445
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3447
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    if-nez v1, :cond_f

    .line 3448
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3449
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    .line 3455
    :cond_e
    :goto_e
    return-void

    .line 3450
    :cond_f
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 3451
    iput v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    goto :goto_e
.end method

.method private v()Z
    .registers 2

    .prologue
    .line 6666
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private w()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4060
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:I

    if-nez v0, :cond_a

    .line 4061
    iput v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    .line 4088
    :cond_9
    :goto_9
    return-void

    .line 4064
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v2

    .line 4065
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v2}, LCl;->h(I)I

    .line 4069
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(I)Landroid/util/Pair;

    move-result-object v3

    .line 4070
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 4071
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v3

    .line 4074
    iput v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    .line 4077
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-ne v0, v7, :cond_48

    .line 4080
    add-int v0, v3, v1

    shr-int/lit8 v0, v0, 0x1

    .line 4083
    :goto_31
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v4, v2}, LCl;->a(I)F

    move-result v4

    invoke-direct {p0, v5, v3, v0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IIIF)V

    .line 4085
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-ne v3, v7, :cond_9

    .line 4086
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v3, v2}, LCl;->b(I)F

    move-result v2

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IIIF)V

    goto :goto_9

    :cond_48
    move v0, v1

    goto :goto_31
.end method

.method private w()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 6752
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6760
    :cond_7
    :goto_7
    return v0

    .line 6754
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    .line 6755
    if-ltz v1, :cond_7

    .line 6757
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v2

    .line 6758
    if-ltz v2, :cond_7

    .line 6760
    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private x()V
    .registers 2

    .prologue
    .line 4982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 4985
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 4986
    return-void
.end method

.method private x()Z
    .registers 2

    .prologue
    .line 6922
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private y()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4993
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v1

    sub-int v2, v0, v1

    .line 4995
    const/4 v0, 0x1

    if-ge v2, v0, :cond_19

    move v2, v6

    .line 5001
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:Z

    if-eqz v0, :cond_29

    .line 5002
    const/16 v1, 0x4000

    .line 5005
    :goto_1f
    sget-object v3, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5006
    return-void

    :cond_29
    move v1, v2

    goto :goto_1f
.end method

.method private y()Z
    .registers 2

    .prologue
    .line 6937
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    invoke-interface {v0}, LDH;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private z()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x1

    .line 5302
    const/4 v0, 0x0

    .line 5304
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v2, :cond_26

    .line 5306
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_13

    .line 5308
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    move v0, v1

    .line 5312
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_2c

    .line 5313
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()I

    move-result v2

    .line 5315
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_43

    :goto_25
    move v0, v1

    .line 5329
    :cond_26
    :goto_26
    if-eqz v0, :cond_2b

    .line 5330
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 5333
    :cond_2b
    return-void

    .line 5318
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 5319
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->B:I

    if-ltz v2, :cond_26

    .line 5320
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()I

    move-result v2

    .line 5322
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->B:I

    if-eq v2, v3, :cond_26

    move v0, v1

    .line 5323
    goto :goto_26

    :cond_43
    move v1, v0

    goto :goto_25
.end method

.method private z()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6993
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6994
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6995
    if-lez v2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method protected a(I)I
    .registers 5
    .parameter

    .prologue
    .line 8604
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8605
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8606
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8607
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    .line 8608
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    invoke-virtual {v1, v0}, LCl;->g(I)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 8587
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    .line 8590
    :goto_7
    return v0

    .line 8588
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(I)I

    move-result v0

    .line 8589
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(II)I

    move-result v0

    goto :goto_7
.end method

.method public a(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4161
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v1, :cond_b

    .line 4162
    if-eqz p2, :cond_a

    .line 4163
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4176
    :cond_a
    :goto_a
    return v0

    .line 4167
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, p1, p2}, LCl;->a(ILandroid/graphics/Rect;)I

    move-result v1

    .line 4169
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    .line 4170
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    .line 4171
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 4173
    :cond_23
    if-eqz p2, :cond_2c

    .line 4174
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 4176
    :cond_2c
    add-int/2addr v0, v1

    goto :goto_a
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/apps/docs/editors/text/TextView;)LCD;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 7501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, LCK;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7502
    new-instance v0, LCE;

    invoke-direct {v0, p1, p2}, LCE;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/editors/text/TextView;)V

    .line 7507
    :goto_f
    invoke-interface {v0}, LCD;->r()V

    .line 7508
    invoke-interface {v0}, LCD;->h()Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_18
    return-object v0

    .line 7504
    :cond_19
    new-instance v0, LCH;

    invoke-direct {v0, p2}, LCH;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    goto :goto_f

    .line 7508
    :cond_1f
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public a()LCe;
    .registers 2

    .prologue
    .line 7515
    new-instance v0, LDm;

    invoke-direct {v0, p0}, LDm;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-object v0
.end method

.method public final a()LCl;
    .registers 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    return-object v0
.end method

.method protected a()LDH;
    .registers 2

    .prologue
    .line 1079
    const/4 v0, 0x0

    return-object v0
.end method

.method a()LDi;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 8733
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:Z

    if-nez v1, :cond_6

    .line 8744
    :goto_5
    return-object v0

    .line 8737
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    if-nez v1, :cond_1a

    .line 8738
    new-instance v1, LDi;

    invoke-direct {v1, p0, v0}, LDi;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    .line 8740
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8741
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8744
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    goto :goto_5
.end method

.method public a()LDp;
    .registers 3

    .prologue
    .line 8748
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:Z

    if-nez v0, :cond_6

    .line 8749
    const/4 v0, 0x0

    .line 8759
    :goto_5
    return-object v0

    .line 8752
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-nez v0, :cond_1a

    .line 8753
    new-instance v0, LDp;

    invoke-direct {v0, p0}, LDp;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    .line 8755
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8756
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8759
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    goto :goto_5
.end method

.method protected a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 14
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2475
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Z

    .line 2479
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_81

    .line 2480
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v6

    .line 2481
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v3

    .line 2482
    if-gez v6, :cond_14

    if-ltz v3, :cond_15

    :cond_14
    move v0, v7

    .line 2488
    :cond_15
    :goto_15
    if-eqz v0, :cond_77

    .line 2489
    new-instance v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    invoke-direct {v4, p1}, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2491
    iput v6, v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:I

    .line 2492
    iput v3, v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->b:I

    .line 2494
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_78

    .line 2502
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2504
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 2505
    const-class v2, Ljava/lang/Object;

    invoke-interface {v8, v6, v3, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 2506
    :goto_3b
    array-length v2, v9

    if-ge v1, v2, :cond_68

    .line 2507
    instance-of v2, v0, Landroid/text/TextWatcher;

    if-nez v2, :cond_65

    instance-of v2, v0, Landroid/text/SpanWatcher;

    if-nez v2, :cond_65

    .line 2508
    aget-object v2, v9, v1

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2509
    aget-object v2, v9, v1

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 2510
    aget-object v10, v9, v1

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    .line 2511
    if-ge v5, v6, :cond_5b

    move v5, v6

    .line 2512
    :cond_5b
    if-le v2, v3, :cond_5e

    move v2, v3

    .line 2513
    :cond_5e
    aget-object v11, v9, v1

    sub-int/2addr v5, v6

    sub-int/2addr v2, v6

    invoke-interface {v8, v11, v5, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2506
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 2517
    :cond_68
    iput-object v8, v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Ljava/lang/CharSequence;

    .line 2522
    :goto_6a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_76

    if-ltz v6, :cond_76

    if-ltz v3, :cond_76

    .line 2523
    iput-boolean v7, v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Z

    :cond_76
    move-object p1, v4

    .line 2529
    :cond_77
    return-object p1

    .line 2519
    :cond_78
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Ljava/lang/CharSequence;

    goto :goto_6a

    :cond_81
    move v3, v1

    move v6, v1

    goto :goto_15
.end method

.method public a()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final a()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method protected a(I)Landroid/util/Pair;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4056
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, p1}, LCl;->a(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 7460
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method public a()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 6611
    return-void
.end method

.method public a(I)V
    .registers 20
    .parameter

    .prologue
    .line 3101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3102
    if-eqz v2, :cond_7c

    .line 3103
    iget-object v3, v2, LDd;->a:LDl;

    if-eqz v3, :cond_18

    .line 3104
    iget-object v2, v2, LDd;->a:LDl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v3}, LDl;->a(Lcom/google/android/apps/docs/editors/text/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3156
    :cond_17
    :goto_17
    return-void

    .line 3114
    :cond_18
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_37

    .line 3115
    const/16 v2, 0x82

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 3116
    if-eqz v2, :cond_17

    .line 3117
    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3118
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3123
    :cond_37
    invoke-static {}, LCx;->a()Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_5c

    .line 3125
    const/16 v2, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 3126
    if-eqz v2, :cond_17

    .line 3127
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3128
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3134
    :cond_5c
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_7c

    .line 3135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v2}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3136
    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_17

    .line 3143
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 3144
    if-eqz v17, :cond_17

    .line 3145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3146
    const/16 v14, 0x3f3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LCx;->a:I

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3150
    const/16 v2, 0x3f3

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, LCx;->a:I

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17
.end method

.method public a(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 6048
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 6065
    :cond_4
    :goto_4
    return-void

    .line 6052
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 6053
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6054
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6055
    if-ne p1, p2, :cond_39

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_39

    move-object v0, v1

    .line 6056
    check-cast v0, Landroid/text/Spannable;

    .line 6057
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 6058
    array-length v5, v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v5, :cond_39

    aget-object v6, v2, v3

    .line 6059
    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6058
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 6062
    :cond_39
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v1, v0, v2}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    goto :goto_4
.end method

.method public a(III)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3395
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v0, :cond_8

    .line 3396
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 3442
    :cond_7
    :goto_7
    return-void

    .line 3398
    :cond_8
    if-gez p1, :cond_e

    if-gez p2, :cond_e

    if-ltz p3, :cond_7

    .line 3399
    :cond_e
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3400
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3402
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v1}, LCl;->h(I)I

    move-result v0

    .line 3403
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v0}, LCl;->a(I)I

    move-result v2

    .line 3411
    if-lez v0, :cond_35

    .line 3412
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, LCl;->b(I)I

    move-result v4

    sub-int/2addr v2, v4

    .line 3417
    :cond_35
    if-ne v1, v3, :cond_69

    .line 3422
    :goto_37
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, LCl;->a(I)I

    move-result v1

    .line 3424
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v3

    .line 3425
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v4

    add-int/2addr v4, v0

    .line 3430
    const/4 v0, 0x0

    :goto_4e
    iget v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-ge v0, v5, :cond_70

    .line 3431
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 3432
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3433
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3430
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 3420
    :cond_69
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v3}, LCl;->h(I)I

    move-result v0

    goto :goto_37

    .line 3437
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v1, v4

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate(IIII)V

    goto/16 :goto_7
.end method

.method protected a(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5014
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->C()V

    .line 5016
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 5018
    if-gez p1, :cond_74

    .line 5019
    const/4 v5, 0x0

    .line 5021
    :goto_9
    if-gez p2, :cond_b

    .line 5026
    :cond_b
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_76

    .line 5038
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5041
    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-nez v1, :cond_1c

    .line 5043
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_3d

    .line 5044
    new-instance v1, LCf;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:F

    iget v8, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:F

    iget-boolean v9, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:Z

    iget-object v10, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-nez v10, :cond_6e

    iget-object v10, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    :goto_36
    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, LCf;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 5049
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_41

    .line 5051
    :cond_41
    if-eqz p6, :cond_46

    .line 5052
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()V

    .line 5055
    :cond_46
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_64

    .line 5056
    move/from16 v0, p5

    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(F)Z

    move-result v1

    if-nez v1, :cond_64

    .line 5057
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5061
    const/4 v2, -0x2

    if-eq v1, v2, :cond_70

    const/4 v2, -0x1

    if-eq v1, v2, :cond_70

    .line 5062
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()V

    .line 5072
    :cond_64
    :goto_64
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 5073
    return-void

    .line 5028
    :sswitch_68
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_14

    .line 5034
    :sswitch_6b
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_14

    .line 5044
    :cond_6e
    const/4 v10, 0x0

    goto :goto_36

    .line 5066
    :cond_70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->h:Z

    goto :goto_64

    :cond_74
    move v5, p1

    goto :goto_9

    .line 5026
    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_68
        0x5 -> :sswitch_6b
    .end sparse-switch
.end method

.method a(LDe;)V
    .registers 3
    .parameter

    .prologue
    .line 4924
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()V

    .line 4926
    iget-boolean v0, p1, LDe;->c:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, LDe;->b:Z

    if-eqz v0, :cond_12

    .line 4927
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()V

    .line 4928
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()Z

    .line 4933
    :cond_11
    :goto_11
    return-void

    .line 4929
    :cond_12
    iget-boolean v0, p1, LDe;->a:Z

    if-eqz v0, :cond_11

    .line 4931
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()V

    goto :goto_11
.end method

.method public a(Landroid/text/Editable;)V
    .registers 6
    .parameter

    .prologue
    .line 6127
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 6128
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    .line 6129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6130
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1b

    .line 6131
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 6134
    :cond_1b
    return-void
.end method

.method public a(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 6176
    const/4 v0, 0x0

    .line 6179
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 6181
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v2, :cond_c5

    .line 6182
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 6186
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6187
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    .line 6190
    :cond_13
    if-gez p3, :cond_17

    if-ltz p4, :cond_24

    .line 6191
    :cond_17
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(III)V

    .line 6192
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()V

    .line 6193
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->E()V

    :cond_24
    move v0, p4

    move v2, v3

    .line 6197
    :goto_26
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_41

    .line 6198
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 6202
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_34

    .line 6203
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    .line 6206
    :cond_34
    if-gez p3, :cond_38

    if-ltz p4, :cond_3f

    .line 6207
    :cond_38
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 6208
    invoke-virtual {p0, v1, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(III)V

    :cond_3f
    move v1, p4

    move v2, v3

    .line 6212
    :cond_41
    if-eqz v2, :cond_5a

    .line 6213
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_5a

    .line 6214
    if-gez v1, :cond_51

    .line 6215
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 6217
    :cond_51
    if-gez v0, :cond_57

    .line 6218
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6220
    :cond_57
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)V

    .line 6224
    :cond_5a
    instance-of v0, p2, Landroid/text/style/UpdateAppearance;

    if-nez v0, :cond_62

    instance-of v0, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v0, :cond_70

    .line 6225
    :cond_62
    if-eqz v4, :cond_68

    iget v0, v4, LDe;->a:I

    if-nez v0, :cond_bc

    .line 6226
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 6227
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 6228
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()V

    .line 6234
    :cond_70
    :goto_70
    invoke-static {p1, p2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 6235
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 6236
    if-eqz v4, :cond_82

    invoke-static {p1, p2}, LDG;->b(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 6237
    iput-boolean v3, v4, LDe;->b:Z

    .line 6240
    :cond_82
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_91

    .line 6241
    if-eqz v4, :cond_8e

    iget v0, v4, LDe;->a:I

    if-nez v0, :cond_bf

    .line 6242
    :cond_8e
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()V

    .line 6249
    :cond_91
    :goto_91
    instance-of v0, p2, Landroid/text/ParcelableSpan;

    if-eqz v0, :cond_bb

    .line 6252
    if-eqz v4, :cond_bb

    iget-object v0, v4, LDe;->a:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v0, :cond_bb

    .line 6253
    iget v0, v4, LDe;->a:I

    if-eqz v0, :cond_c2

    .line 6254
    if-ltz p3, :cond_ad

    .line 6255
    iget v0, v4, LDe;->b:I

    if-le v0, p3, :cond_a7

    .line 6256
    iput p3, v4, LDe;->b:I

    .line 6258
    :cond_a7
    iget v0, v4, LDe;->b:I

    if-le v0, p5, :cond_ad

    .line 6259
    iput p5, v4, LDe;->b:I

    .line 6262
    :cond_ad
    if-ltz p4, :cond_bb

    .line 6263
    iget v0, v4, LDe;->b:I

    if-le v0, p4, :cond_b5

    .line 6264
    iput p4, v4, LDe;->b:I

    .line 6266
    :cond_b5
    iget v0, v4, LDe;->b:I

    if-le v0, p6, :cond_bb

    .line 6267
    iput p6, v4, LDe;->b:I

    .line 6278
    :cond_bb
    :goto_bb
    return-void

    .line 6230
    :cond_bc
    iput-boolean v3, v4, LDe;->c:Z

    goto :goto_70

    .line 6244
    :cond_bf
    iput-boolean v3, v4, LDe;->a:Z

    goto :goto_91

    .line 6274
    :cond_c2
    iput-boolean v3, v4, LDe;->c:Z

    goto :goto_bb

    :cond_c5
    move v2, v0

    move v0, v1

    goto/16 :goto_26
.end method

.method public a(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter

    .prologue
    .line 6077
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    .line 6081
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6082
    return-void
.end method

.method public a(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 4765
    return-void
.end method

.method public a(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 4777
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    if-nez v0, :cond_11

    .line 4778
    new-instance v0, LCY;

    invoke-direct {v0, p0}, LCY;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    .line 4783
    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    invoke-virtual {v0, p1}, LCY;->a(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 4784
    return-void

    .line 4780
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LCY;->a(LCY;Z)V

    goto :goto_b
.end method

.method protected a(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6038
    return-void
.end method

.method public a(I)Z
    .registers 21
    .parameter

    .prologue
    .line 5430
    const/4 v6, 0x0

    .line 5432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, LCl;->h(I)I

    move-result v9

    .line 5435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, LCl;->a(I)F

    move-result v2

    float-to-int v10, v2

    .line 5436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v9}, LCl;->a(I)I

    move-result v11

    .line 5437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, LCl;->a(I)I

    move-result v12

    .line 5439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v9}, LCl;->c(I)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v5, v2

    .line 5440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v9}, LCl;->d(I)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v13, v2

    .line 5441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2}, LCl;->d()I

    move-result v14

    .line 5445
    sget-object v2, LCU;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v3, v9}, LCl;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_21a

    .line 5455
    const/4 v2, 0x0

    .line 5458
    :goto_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v3, v9}, LCl;->d(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6b

    .line 5459
    mul-int/lit8 v2, v2, -0x1

    .line 5462
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v4

    sub-int v15, v3, v4

    .line 5463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v4

    sub-int v16, v3, v4

    .line 5465
    sub-int v3, v12, v11

    div-int/lit8 v4, v3, 0x2

    .line 5468
    div-int/lit8 v3, v16, 0x4

    if-le v4, v3, :cond_217

    div-int/lit8 v3, v16, 0x4

    .line 5469
    :goto_9d
    div-int/lit8 v7, v15, 0x4

    if-le v4, v7, :cond_a3

    div-int/lit8 v4, v15, 0x4

    .line 5471
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v7

    .line 5472
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v8

    .line 5474
    sub-int v17, v11, v8

    move/from16 v0, v17

    if-ge v0, v3, :cond_b3

    sub-int v8, v11, v3

    .line 5475
    :cond_b3
    sub-int v17, v12, v8

    sub-int v18, v16, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_214

    sub-int v3, v16, v3

    sub-int v3, v12, v3

    .line 5476
    :goto_c1
    sub-int v8, v14, v3

    move/from16 v0, v16

    if-ge v8, v0, :cond_c9

    sub-int v3, v14, v16

    .line 5477
    :cond_c9
    rsub-int/lit8 v8, v3, 0x0

    if-lez v8, :cond_211

    const/4 v3, 0x0

    move v8, v3

    .line 5479
    :goto_cf
    if-eqz v2, :cond_20e

    .line 5480
    sub-int v3, v10, v7

    if-ge v3, v4, :cond_20b

    .line 5481
    sub-int v3, v10, v4

    .line 5483
    :goto_d7
    sub-int v7, v10, v3

    sub-int v14, v15, v4

    if-le v7, v14, :cond_e1

    .line 5484
    sub-int v3, v15, v4

    sub-int v3, v10, v3

    .line 5488
    :cond_e1
    :goto_e1
    if-gez v2, :cond_150

    .line 5489
    sub-int v2, v5, v3

    if-lez v2, :cond_208

    move v2, v5

    .line 5490
    :goto_e8
    sub-int v3, v13, v2

    if-ge v3, v15, :cond_ee

    sub-int v2, v13, v15

    .line 5536
    :cond_ee
    :goto_ee
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v3

    if-ne v2, v3, :cond_fa

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v3

    if-eq v8, v3, :cond_200

    .line 5537
    :cond_fa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    if-nez v3, :cond_1a6

    .line 5538
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 5559
    :goto_105
    const/4 v2, 0x1

    .line 5562
    :goto_106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 5567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    if-nez v3, :cond_11b

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    .line 5568
    :cond_11b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v3, v10, v11, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/graphics/Rect;I)V

    .line 5570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 5572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 5573
    const/4 v2, 0x1

    .line 5577
    :cond_149
    return v2

    .line 5447
    :pswitch_14a
    const/4 v2, 0x1

    .line 5448
    goto/16 :goto_5e

    .line 5451
    :pswitch_14d
    const/4 v2, -0x1

    .line 5452
    goto/16 :goto_5e

    .line 5491
    :cond_150
    if-lez v2, :cond_15e

    .line 5492
    sub-int v2, v13, v3

    if-ge v2, v15, :cond_205

    sub-int v2, v13, v15

    .line 5493
    :goto_158
    sub-int v3, v5, v2

    if-lez v3, :cond_ee

    move v2, v5

    goto :goto_ee

    .line 5495
    :cond_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v9}, LCl;->q(I)I

    move-result v2

    .line 5496
    sub-int v7, v13, v5

    add-int/2addr v7, v2

    if-gt v7, v15, :cond_178

    .line 5500
    add-int v3, v13, v5

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    div-int/lit8 v3, v15, 0x2

    sub-int/2addr v2, v3

    goto/16 :goto_ee

    .line 5501
    :cond_178
    sub-int v2, v13, v4

    if-le v10, v2, :cond_180

    .line 5506
    sub-int v2, v13, v15

    goto/16 :goto_ee

    .line 5507
    :cond_180
    add-int v2, v5, v4

    if-ge v10, v2, :cond_187

    move v2, v5

    .line 5512
    goto/16 :goto_ee

    .line 5513
    :cond_187
    if-le v5, v3, :cond_18c

    move v2, v5

    .line 5517
    goto/16 :goto_ee

    .line 5518
    :cond_18c
    add-int v2, v3, v15

    if-ge v13, v2, :cond_194

    .line 5522
    sub-int v2, v13, v15

    goto/16 :goto_ee

    .line 5527
    :cond_194
    sub-int v2, v10, v3

    if-ge v2, v4, :cond_203

    .line 5528
    sub-int v2, v10, v4

    .line 5530
    :goto_19a
    sub-int v3, v10, v2

    sub-int v5, v15, v4

    if-le v3, v5, :cond_ee

    .line 5531
    sub-int v2, v15, v4

    sub-int v2, v10, v2

    goto/16 :goto_ee

    .line 5540
    :cond_1a6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:J

    sub-long/2addr v3, v5

    .line 5541
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v5

    sub-int/2addr v2, v5

    .line 5542
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v5

    sub-int v5, v8, v5

    .line 5544
    const-wide/16 v6, 0xfa

    cmp-long v3, v3, v6

    if-lez v3, :cond_1e9

    .line 5545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v6

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 5546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->awakenScrollBars(I)Z

    .line 5547
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5556
    :goto_1df
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:J

    goto/16 :goto_105

    .line 5549
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1fa

    .line 5550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5553
    :cond_1fa
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollBy(II)V

    goto :goto_1df

    :cond_200
    move v2, v6

    goto/16 :goto_106

    :cond_203
    move v2, v3

    goto :goto_19a

    :cond_205
    move v2, v3

    goto/16 :goto_158

    :cond_208
    move v2, v3

    goto/16 :goto_e8

    :cond_20b
    move v3, v7

    goto/16 :goto_d7

    :cond_20e
    move v3, v7

    goto/16 :goto_e1

    :cond_211
    move v8, v3

    goto/16 :goto_cf

    :cond_214
    move v3, v8

    goto/16 :goto_c1

    :cond_217
    move v3, v4

    goto/16 :goto_9d

    .line 5445
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_14d
    .end packed-switch
.end method

.method a(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4581
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    .line 4582
    if-eqz v1, :cond_4c

    .line 4583
    const/4 v0, -0x2

    if-eq p2, v0, :cond_93

    .line 4584
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 4585
    if-gez p2, :cond_4d

    .line 4586
    const/4 v0, -0x1

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    move v4, v5

    move v0, v6

    .line 4621
    :cond_15
    :goto_15
    iget v2, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8c

    .line 4622
    invoke-interface {v1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4631
    :goto_21
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4632
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    const/16 v1, 0x800

    invoke-static {v0, v1}, LDG;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_33

    .line 4633
    iget v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4635
    :cond_33
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-eqz v0, :cond_3d

    .line 4636
    iget v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4638
    :cond_3d
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 4639
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4640
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4641
    const/4 v6, 0x1

    .line 4643
    :cond_4c
    return v6

    .line 4592
    :cond_4d
    add-int v4, p3, p4

    .line 4594
    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_76

    move-object v0, v1

    .line 4595
    check-cast v0, Landroid/text/Spanned;

    .line 4596
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {v0, p2, v4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 4598
    array-length v2, v8

    move v3, p2

    .line 4599
    :goto_5e
    if-lez v2, :cond_77

    .line 4600
    add-int/lit8 v7, v2, -0x1

    .line 4601
    aget-object v2, v8, v7

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 4602
    if-ge v2, v3, :cond_a0

    .line 4603
    :goto_6a
    aget-object v3, v8, v7

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 4604
    if-le v3, v4, :cond_9e

    :goto_72
    move v4, v3

    move v3, v2

    move v2, v7

    .line 4605
    goto :goto_5e

    :cond_76
    move v3, p2

    .line 4607
    :cond_77
    iput v3, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4608
    sub-int v0, v4, p4

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4610
    if-le v3, v5, :cond_84

    move v0, v5

    .line 4615
    :goto_80
    if-le v4, v5, :cond_88

    move v4, v5

    .line 4616
    goto :goto_15

    .line 4612
    :cond_84
    if-gez v3, :cond_9c

    move v0, v6

    .line 4613
    goto :goto_80

    .line 4617
    :cond_88
    if-gez v4, :cond_15

    move v4, v6

    .line 4618
    goto :goto_15

    .line 4624
    :cond_8c
    invoke-static {v1, v0, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    .line 4627
    :cond_93
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4628
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4629
    const-string v0, ""

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    :cond_9c
    move v0, v3

    goto :goto_80

    :cond_9e
    move v3, v4

    goto :goto_72

    :cond_a0
    move v2, v3

    goto :goto_6a
.end method

.method public a(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 4573
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4978
    const/4 v0, 0x0

    return v0
.end method

.method protected a(ZI)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3521
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:F

    add-float/2addr v0, v1

    invoke-static {v0}, LCj;->a(F)I

    move-result v0

    return v0
.end method

.method public b()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method b(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6113
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 6114
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/util/ArrayList;

    .line 6115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6116
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1b

    .line 6117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 6120
    :cond_1b
    return-void
.end method

.method protected b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3730
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:Z

    .line 3731
    return-void
.end method

.method public b(I)Z
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 7189
    .line 7190
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 7193
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    .line 7194
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v2

    .line 7196
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7197
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v1

    move v1, v0

    .line 7200
    :goto_29
    sparse-switch p1, :sswitch_data_b6

    .line 7254
    :goto_2c
    return v3

    .line 7202
    :sswitch_2d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v0, v2, v1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 7203
    array-length v1, v0

    if-lt v1, v5, :cond_6d

    invoke-static {}, LCx;->a()Z

    move-result v1

    if-eqz v1, :cond_6d

    move v2, v3

    move-object v1, v4

    .line 7205
    :goto_44
    array-length v6, v0

    if-ge v2, v6, :cond_63

    .line 7206
    aget-object v6, v0, v3

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 7207
    if-nez v1, :cond_5a

    .line 7208
    invoke-static {v4, v6}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 7205
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 7210
    :cond_5a
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_57

    .line 7213
    :cond_63
    if-eqz v1, :cond_68

    .line 7214
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/content/ClipData;)V

    .line 7219
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    move v3, v5

    .line 7220
    goto :goto_2c

    .line 7217
    :cond_6d
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 7223
    :sswitch_77
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v0, :cond_80

    .line 7225
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->A()Z

    :goto_7e
    move v3, v5

    .line 7229
    goto :goto_2c

    .line 7227
    :cond_80
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()Z

    goto :goto_7e

    .line 7236
    :sswitch_84
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()Z

    move v3, v5

    .line 7237
    goto :goto_2c

    .line 7240
    :sswitch_89
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->c(II)V

    move v3, v5

    .line 7241
    goto :goto_2c

    .line 7244
    :sswitch_8e
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;)V

    .line 7245
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7246
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    move v3, v5

    .line 7247
    goto :goto_2c

    .line 7250
    :sswitch_a3
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;)V

    .line 7251
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    move v3, v5

    .line 7252
    goto/16 :goto_2c

    :cond_b2
    move v1, v0

    move v2, v3

    goto/16 :goto_29

    .line 7200
    :sswitch_data_b6
    .sparse-switch
        0x102001f -> :sswitch_84
        0x1020020 -> :sswitch_8e
        0x1020021 -> :sswitch_a3
        0x1020022 -> :sswitch_89
        0x1020023 -> :sswitch_2d
        0x102002d -> :sswitch_77
    .end sparse-switch
.end method

.method public c()I
    .registers 4

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1269
    if-eqz v0, :cond_8

    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    .line 1270
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingTop()I

    move-result v0

    .line 1272
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingTop()I

    move-result v1

    iget v2, v0, LDb;->i:I

    add-int/2addr v1, v2

    iget v0, v0, LDb;->a:I

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method public c(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6141
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 6142
    if-eqz v0, :cond_8

    iget v1, v0, LDe;->a:I

    if-nez v1, :cond_b

    .line 6143
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()V

    .line 6145
    :cond_b
    if-eqz v0, :cond_21

    .line 6146
    const/4 v1, 0x1

    iput-boolean v1, v0, LDe;->c:Z

    .line 6147
    iget v1, v0, LDe;->b:I

    if-gez v1, :cond_31

    .line 6148
    iput p2, v0, LDe;->b:I

    .line 6149
    add-int v1, p2, p3

    iput v1, v0, LDe;->c:I

    .line 6154
    :goto_1a
    iget v1, v0, LDe;->d:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, LDe;->d:I

    .line 6157
    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Ljava/lang/CharSequence;III)V

    .line 6158
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;III)V

    .line 6163
    if-eq p3, p4, :cond_30

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    if-eqz v0, :cond_30

    .line 6164
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 6166
    :cond_30
    return-void

    .line 6151
    :cond_31
    iget v1, v0, LDe;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, LDe;->b:I

    .line 6152
    iget v1, v0, LDe;->c:I

    add-int v2, p2, p3

    iget v3, v0, LDe;->d:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, LDe;->c:I

    goto :goto_1a
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 7399
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 6689
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 6690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:Z

    .line 6691
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 6831
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1f

    .line 6832
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LCl;->f(I)F

    move-result v0

    float-to-int v0, v0

    .line 6836
    :goto_17
    return v0

    .line 6832
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->c()I

    move-result v0

    goto :goto_17

    .line 6836
    :cond_1f
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_17
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 5645
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    if-eqz v0, :cond_1e

    .line 5646
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5647
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 5648
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->postInvalidate()V

    .line 5651
    :cond_1e
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 6841
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_10

    .line 6842
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 6844
    :goto_f
    return v0

    :cond_10
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_f
.end method

.method public d()I
    .registers 4

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1282
    if-eqz v0, :cond_8

    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    .line 1283
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingBottom()I

    move-result v0

    .line 1285
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingBottom()I

    move-result v1

    iget v2, v0, LDb;->i:I

    add-int/2addr v1, v2

    iget v0, v0, LDb;->b:I

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method public d()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6941
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6949
    :cond_7
    :goto_7
    return v0

    .line 6945
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_7

    .line 6946
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7553
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 7567
    :goto_8
    return v0

    .line 7556
    :cond_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_32

    .line 7557
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7558
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 7559
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_29

    .line 7560
    const/16 v2, 0x1f5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7562
    :cond_29
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    move v0, v1

    .line 7565
    goto :goto_8

    .line 7567
    :cond_32
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 2390
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2391
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2394
    :cond_27
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 2397
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 2398
    if-eqz v0, :cond_76

    .line 2399
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2400
    iget-object v2, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_43

    iget-object v2, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2401
    iget-object v2, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2403
    :cond_43
    iget-object v2, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_54

    iget-object v2, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2404
    iget-object v2, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2406
    :cond_54
    iget-object v2, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2407
    iget-object v2, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2409
    :cond_65
    iget-object v2, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2410
    iget-object v0, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2413
    :cond_76
    return-void
.end method

.method public e()I
    .registers 4

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1295
    if-eqz v0, :cond_8

    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    .line 1296
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v0

    .line 1298
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, v0, LDb;->i:I

    add-int/2addr v1, v2

    iget v0, v0, LDb;->c:I

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 6965
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public f()I
    .registers 4

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1308
    if-eqz v0, :cond_8

    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    .line 1309
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v0

    .line 1311
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v1

    iget v2, v0, LDb;->i:I

    add-int/2addr v1, v2

    iget v0, v0, LDb;->d:I

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()Z

    move-result v0

    return v0
.end method

.method public g()I
    .registers 6

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v0

    .line 1344
    :cond_9
    :goto_9
    return v0

    .line 1325
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    if-gt v0, v1, :cond_19

    .line 1326
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v0

    goto :goto_9

    .line 1329
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v0

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v1

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    .line 1332
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    invoke-virtual {v2, v3}, LCl;->a(I)I

    move-result v2

    .line 1334
    if-ge v2, v1, :cond_9

    .line 1338
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v3, v3, 0x70

    .line 1339
    const/16 v4, 0x30

    if-eq v3, v4, :cond_9

    .line 1341
    const/16 v4, 0x50

    if-ne v3, v4, :cond_41

    .line 1342
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_9

    .line 1344
    :cond_41
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public g()V
    .registers 2

    .prologue
    .line 2070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    .line 2071
    return-void
.end method

.method public getBaseline()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4182
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v0, :cond_a

    .line 4183
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 4191
    :goto_9
    return v0

    .line 4187
    :cond_a
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x30

    if-eq v0, v2, :cond_24

    .line 4188
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v0

    .line 4191
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v1}, LCl;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_24
    move v0, v1

    goto :goto_17
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 3582
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:F

    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter

    .prologue
    .line 4115
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v0, :cond_8

    .line 4116
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4140
    :goto_7
    return-void

    .line 4120
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    .line 4121
    if-gez v0, :cond_12

    .line 4122
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 4126
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v0}, LCl;->h(I)I

    move-result v1

    .line 4127
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v1}, LCl;->a(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 4128
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2, v1}, LCl;->k(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4130
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v0}, LCl;->a(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4131
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4134
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    .line 4135
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    .line 4136
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4d

    .line 4137
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 4139
    :cond_4d
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 6778
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    int-to-float v1, v1

    const v2, 0x40a95555

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    .line 6800
    :cond_c
    :goto_c
    :pswitch_c
    return v0

    .line 6779
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_3e

    .line 6780
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v1}, LDj;->d()Z

    move-result v1

    if-nez v1, :cond_30

    .line 6781
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    .line 6782
    invoke-virtual {v1}, LDj;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6783
    iget v0, v1, LDj;->b:F

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_c

    .line 6787
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 6788
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_6e

    .line 6800
    :cond_3e
    :pswitch_3e
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    goto :goto_c

    .line 6792
    :pswitch_43
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v3}, LCl;->d(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v3}, LCl;->c(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_c

    .line 6788
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_3e
        :pswitch_c
        :pswitch_3e
        :pswitch_43
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:F

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 6805
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    int-to-float v1, v1

    const v2, 0x40a95555

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    .line 6826
    :goto_c
    :pswitch_c
    return v0

    .line 6806
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_3c

    .line 6807
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v1}, LDj;->d()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 6808
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    .line 6809
    iget v1, v0, LDj;->a:F

    iget v0, v0, LDj;->b:F

    sub-float v0, v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_c

    .line 6810
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 6811
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_86

    .line 6826
    :cond_3c
    :pswitch_3c
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v0

    goto :goto_c

    .line 6813
    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6815
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v3}, LCl;->f(I)F

    move-result v1

    .line 6816
    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_c

    .line 6821
    :pswitch_64
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v3}, LCl;->f(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_c

    .line 6811
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_64
        :pswitch_3c
        :pswitch_41
        :pswitch_3c
        :pswitch_c
        :pswitch_3c
        :pswitch_64
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 3587
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:F

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 3577
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:F

    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public h()I
    .registers 6

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 1355
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v0

    .line 1377
    :cond_9
    :goto_9
    return v0

    .line 1358
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    if-gt v0, v1, :cond_19

    .line 1359
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v0

    goto :goto_9

    .line 1362
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v1

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v0

    .line 1364
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    sub-int/2addr v1, v0

    .line 1365
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    invoke-virtual {v2, v3}, LCl;->a(I)I

    move-result v2

    .line 1367
    if-ge v2, v1, :cond_9

    .line 1371
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v3, v3, 0x70

    .line 1372
    const/16 v4, 0x30

    if-ne v3, v4, :cond_3d

    .line 1373
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_9

    .line 1374
    :cond_3d
    const/16 v4, 0x50

    if-eq v3, v4, :cond_9

    .line 1377
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public h()V
    .registers 1

    .prologue
    .line 2077
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()V

    .line 2078
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()V

    .line 2079
    return-void
.end method

.method public i()I
    .registers 2

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v0

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 4500
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4508
    :cond_6
    :goto_6
    return-void

    .line 4503
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4504
    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:Z

    if-eqz v1, :cond_6

    .line 4505
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4506
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()V

    goto :goto_6
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 1072
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter

    .prologue
    .line 3603
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3604
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3605
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    .line 3606
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v0

    .line 3612
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 3613
    if-eqz v3, :cond_3b

    .line 3614
    iget-object v4, v3, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_4b

    .line 3615
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v4

    .line 3616
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v5

    .line 3617
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 3619
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v1, v6

    .line 3620
    iget v3, v3, LDb;->g:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 3645
    :cond_3b
    :goto_3b
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate(IIII)V

    .line 3648
    :cond_4a
    return-void

    .line 3621
    :cond_4b
    iget-object v4, v3, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_7e

    .line 3622
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v4

    .line 3623
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v5

    .line 3624
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 3626
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v3, LDb;->d:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 3627
    iget v3, v3, LDb;->h:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 3628
    goto :goto_3b

    :cond_7e
    iget-object v4, v3, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_a4

    .line 3629
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v4

    .line 3630
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    .line 3631
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 3633
    iget v3, v3, LDb;->e:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 3634
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    .line 3635
    goto :goto_3b

    :cond_a4
    iget-object v4, v3, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_3b

    .line 3636
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v4

    .line 3637
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    .line 3638
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 3640
    iget v6, v3, LDb;->f:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 3641
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v3, v3, LDb;->b:I

    sub-int v3, v4, v3

    add-int/2addr v0, v3

    goto/16 :goto_3b
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 3566
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public j()I
    .registers 2

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v0

    return v0
.end method

.method public j()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4877
    iput-boolean v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:Z

    .line 4878
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 4879
    if-eqz v0, :cond_29

    .line 4880
    iget v1, v0, LDe;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LDe;->a:I

    .line 4881
    if-ne v1, v4, :cond_29

    .line 4882
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()V

    .line 4883
    iput-boolean v2, v0, LDe;->a:Z

    .line 4884
    iput v2, v0, LDe;->d:I

    .line 4885
    iget-boolean v1, v0, LDe;->c:Z

    if-eqz v1, :cond_2a

    .line 4888
    iput v2, v0, LDe;->b:I

    .line 4889
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, v0, LDe;->c:I

    .line 4895
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()V

    .line 4898
    :cond_29
    return-void

    .line 4891
    :cond_2a
    iput v3, v0, LDe;->b:I

    .line 4892
    iput v3, v0, LDe;->c:I

    .line 4893
    iput-boolean v2, v0, LDe;->c:Z

    goto :goto_26
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 2132
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:Z

    return v0
.end method

.method public k()I
    .registers 3

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()V
    .registers 3

    .prologue
    .line 4901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:Z

    .line 4902
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 4903
    if-eqz v0, :cond_12

    .line 4904
    iget v1, v0, LDe;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LDe;->a:I

    .line 4905
    if-nez v1, :cond_12

    .line 4906
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(LDe;)V

    .line 4909
    :cond_12
    return-void
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public l()I
    .registers 3

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method l()V
    .registers 3

    .prologue
    .line 4912
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 4913
    if-eqz v0, :cond_e

    iget v1, v0, LDe;->a:I

    if-eqz v1, :cond_e

    .line 4914
    const/4 v1, 0x0

    iput v1, v0, LDe;->a:I

    .line 4915
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(LDe;)V

    .line 4917
    :cond_e
    return-void
.end method

.method l()Z
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 4647
    iget-object v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 4648
    if-eqz v7, :cond_4b

    .line 4649
    iget-boolean v0, v7, LDe;->c:Z

    .line 4650
    if-nez v0, :cond_e

    iget-boolean v1, v7, LDe;->b:Z

    if-eqz v1, :cond_4b

    .line 4651
    :cond_e
    iput-boolean v6, v7, LDe;->c:Z

    .line 4652
    iput-boolean v6, v7, LDe;->b:Z

    .line 4653
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    iget-object v1, v1, LDe;->a:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4654
    if-eqz v1, :cond_4b

    .line 4655
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v2}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 4656
    if-eqz v8, :cond_4b

    .line 4660
    iget v2, v7, LDe;->b:I

    if-gez v2, :cond_29

    if-nez v0, :cond_29

    .line 4661
    const/4 v0, -0x2

    iput v0, v7, LDe;->b:I

    .line 4663
    :cond_29
    iget v2, v7, LDe;->b:I

    iget v3, v7, LDe;->c:I

    iget v4, v7, LDe;->d:I

    iget-object v5, v7, LDe;->a:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4668
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    iget-object v1, v1, LDe;->a:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v8, p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 4669
    iput v9, v7, LDe;->b:I

    .line 4670
    iput v9, v7, LDe;->c:I

    .line 4671
    iput v6, v7, LDe;->d:I

    .line 4672
    iput-boolean v6, v7, LDe;->c:Z

    .line 4673
    const/4 v0, 0x1

    .line 4679
    :goto_4a
    return v0

    :cond_4b
    move v0, v6

    goto :goto_4a
.end method

.method public m()I
    .registers 2

    .prologue
    .line 4147
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->a()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method m()V
    .registers 1

    .prologue
    .line 4921
    return-void
.end method

.method public m()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 5589
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_9

    move v0, v2

    .line 5640
    :goto_8
    return v0

    .line 5592
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v3

    .line 5593
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    .line 5594
    if-eq v3, v0, :cond_15

    move v0, v2

    .line 5595
    goto :goto_8

    .line 5600
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v3}, LCl;->h(I)I

    move-result v1

    .line 5602
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v1}, LCl;->a(I)I

    move-result v4

    .line 5603
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, LCl;->a(I)I

    move-result v5

    .line 5604
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v6

    sub-int v6, v0, v6

    .line 5606
    sub-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    .line 5607
    div-int/lit8 v7, v6, 0x4

    if-le v0, v7, :cond_47

    div-int/lit8 v0, v6, 0x4

    .line 5608
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v7

    .line 5610
    add-int v8, v7, v0

    if-ge v4, v8, :cond_94

    .line 5611
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/2addr v0, v7

    sub-int v4, v5, v4

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, LCl;->g(I)I

    move-result v0

    .line 5618
    :goto_59
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v4

    sub-int v4, v1, v4

    .line 5620
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v5

    .line 5621
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    int-to-float v6, v5

    invoke-virtual {v1, v0, v6}, LCl;->a(IF)I

    move-result v1

    .line 5622
    iget-object v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v6, v0, v4}, LCl;->a(IF)I

    move-result v4

    .line 5625
    if-ge v1, v4, :cond_a6

    move v0, v1

    .line 5626
    :goto_83
    if-le v1, v4, :cond_a8

    .line 5629
    :goto_85
    if-ge v3, v0, :cond_aa

    move v1, v0

    .line 5635
    :cond_88
    :goto_88
    if-eq v1, v3, :cond_ae

    .line 5636
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5637
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 5612
    :cond_94
    add-int v8, v6, v7

    sub-int/2addr v8, v0

    if-le v5, v8, :cond_b1

    .line 5613
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    add-int/2addr v6, v7

    sub-int v0, v6, v0

    sub-int v4, v5, v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, LCl;->g(I)I

    move-result v0

    goto :goto_59

    :cond_a6
    move v0, v4

    .line 5625
    goto :goto_83

    :cond_a8
    move v1, v4

    .line 5626
    goto :goto_85

    .line 5631
    :cond_aa
    if-gt v3, v1, :cond_88

    move v1, v3

    goto :goto_88

    :cond_ae
    move v0, v2

    .line 5640
    goto/16 :goto_8

    :cond_b1
    move v0, v1

    goto :goto_59
.end method

.method public n()I
    .registers 2

    .prologue
    .line 5689
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method n()V
    .registers 4

    .prologue
    .line 4936
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 4937
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    .line 4939
    if-gez v0, :cond_11

    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 4940
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()V

    .line 4943
    :cond_14
    if-ltz v0, :cond_1c

    .line 4944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 4945
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->E()V

    .line 4948
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()V

    .line 4949
    return-void
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 5703
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    .line 5704
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v1

    .line 5706
    if-ltz v0, :cond_e

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public o()I
    .registers 2

    .prologue
    .line 5696
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public o()V
    .registers 1

    .prologue
    .line 4957
    return-void
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 6676
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 3526
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3528
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3531
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    if-eqz v1, :cond_10

    .line 3532
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3534
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v1, :cond_19

    .line 3535
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3537
    :cond_19
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4512
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7103
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7105
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:Z

    if-eqz v0, :cond_1a

    :cond_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:Z

    .line 7117
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:Z

    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:Z

    .line 7119
    new-instance v0, LDk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDk;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    .line 7152
    return-void

    :cond_1a
    move v0, v1

    .line 7105
    goto :goto_d
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3737
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-eqz v0, :cond_29

    .line 3738
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3744
    :goto_9
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-eqz v1, :cond_28

    .line 3751
    array-length v4, v0

    move v2, v3

    .line 3752
    :goto_f
    if-ge v2, v4, :cond_28

    .line 3753
    aget v1, v0, v2

    const v5, 0x10100a7

    if-ne v1, v5, :cond_35

    .line 3754
    add-int/lit8 v1, v4, -0x1

    new-array v1, v1, [I

    .line 3755
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3756
    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 3762
    :cond_28
    return-object v0

    .line 3740
    :cond_29
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3741
    sget-object v1, Lcom/google/android/apps/docs/editors/text/TextView;->b:[I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_9

    .line 3752
    :cond_35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x800

    .line 4517
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 4518
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    if-nez v0, :cond_1b

    .line 4519
    new-instance v0, LDe;

    invoke-direct {v0, p0}, LDe;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 4521
    :cond_1b
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4522
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-eqz v0, :cond_a6

    .line 4523
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget v0, v0, LDd;->a:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4524
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4525
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4526
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget v0, v0, LDd;->b:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4527
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4531
    :goto_41
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 4532
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4534
    :cond_4e
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 4535
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4537
    :cond_5d
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_79

    .line 4538
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_aa

    .line 4541
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4547
    :goto_6e
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Z

    move-result v0

    if-nez v0, :cond_79

    .line 4548
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4551
    :cond_79
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 4553
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4555
    :cond_86
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_b1

    .line 4556
    new-instance v0, LCi;

    invoke-direct {v0, p0}, LCi;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    .line 4557
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 4558
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 4559
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 4563
    :goto_a5
    return-object v0

    .line 4529
    :cond_a6
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_41

    .line 4545
    :cond_aa
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_6e

    .line 4563
    :cond_b1
    const/4 v0, 0x0

    goto :goto_a5
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 3541
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3543
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3544
    iget v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    if-eqz v1, :cond_11

    .line 3545
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3546
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    .line 3549
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    if-eqz v0, :cond_1c

    .line 3550
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    invoke-virtual {v0, v1}, LCV;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3553
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    if-eqz v0, :cond_25

    .line 3554
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDi;

    invoke-virtual {v0}, LDi;->d()V

    .line 3557
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v0, :cond_2e

    .line 3558
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0}, LDp;->d()V

    .line 3561
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 3562
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 8634
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :pswitch_8
    move v0, v1

    .line 8654
    :goto_9
    return v0

    .line 8636
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->q()Z

    move-result v0

    goto :goto_9

    .line 8639
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestFocus()Z

    move v0, v1

    .line 8640
    goto :goto_9

    .line 8643
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v2

    .line 8644
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v0, v1

    .line 8645
    goto :goto_9

    .line 8648
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/DragEvent;)V

    move v0, v1

    .line 8649
    goto :goto_9

    .line 8634
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_2b
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter

    .prologue
    .line 3767
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 3768
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 3769
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    .line 3773
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    int-to-float v2, v2

    const v3, 0x40a95555

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_22

    .line 4047
    :goto_21
    return-void

    .line 3775
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()V

    .line 3778
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v6

    .line 3781
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v2

    .line 3782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v3

    .line 3783
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v4

    .line 3784
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v7

    .line 3785
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollY()I

    move-result v8

    .line 3786
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v9

    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v10

    .line 3788
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBottom()I

    move-result v11

    .line 3789
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getTop()I

    move-result v12

    .line 3793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 3794
    if-eqz v5, :cond_104

    .line 3800
    sub-int v13, v11, v12

    sub-int v4, v13, v4

    sub-int/2addr v4, v2

    .line 3801
    sub-int v13, v9, v10

    sub-int/2addr v13, v3

    sub-int/2addr v13, v6

    .line 3806
    iget-object v14, v5, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_88

    .line 3807
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3808
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v14

    add-int/2addr v14, v7

    int-to-float v14, v14

    add-int v15, v8, v2

    iget v0, v5, LDb;->g:I

    move/from16 v16, v0

    sub-int v16, v4, v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3810
    iget-object v14, v5, LDb;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3811
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3817
    :cond_88
    iget-object v14, v5, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_b2

    .line 3818
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3819
    add-int v14, v7, v9

    sub-int/2addr v14, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v5, LDb;->d:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    add-int/2addr v2, v8

    iget v15, v5, LDb;->h:I

    sub-int/2addr v4, v15

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3821
    iget-object v2, v5, LDb;->d:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3822
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3828
    :cond_b2
    iget-object v2, v5, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d8

    .line 3829
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3830
    add-int v2, v7, v6

    iget v4, v5, LDb;->e:I

    sub-int v4, v13, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3832
    iget-object v2, v5, LDb;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3833
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3839
    :cond_d8
    iget-object v2, v5, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_104

    .line 3840
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3841
    add-int v2, v7, v6

    iget v4, v5, LDb;->f:I

    sub-int v4, v13, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-int v4, v8, v11

    sub-int/2addr v4, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v4, v13

    iget v13, v5, LDb;->b:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3843
    iget-object v2, v5, LDb;->b:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3844
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3848
    :cond_104
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:I

    .line 3850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v2, :cond_111

    .line 3851
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->y()V

    .line 3854
    :cond_111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 3857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v2, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 3858
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_136

    .line 3860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3862
    :cond_136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v4

    iput-object v4, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 3864
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3870
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v15

    .line 3871
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v2

    .line 3873
    add-int v4, v6, v7

    int-to-float v5, v4

    .line 3874
    int-to-float v4, v8

    .line 3875
    sub-int/2addr v9, v10

    sub-int v3, v9, v3

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 3876
    sub-int v7, v11, v12

    sub-int v2, v7, v2

    add-int/2addr v2, v8

    int-to-float v2, v2

    .line 3878
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_19f

    .line 3879
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v5, v7

    .line 3880
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->b:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v3, v7

    .line 3882
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v4, v7

    .line 3883
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->c:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v2, v7

    .line 3886
    :cond_19f
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3888
    const/4 v3, 0x0

    .line 3889
    const/4 v2, 0x0

    .line 3894
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1be

    .line 3895
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v3

    .line 3896
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)I

    move-result v2

    .line 3898
    :cond_1be
    int-to-float v4, v6

    add-int v5, v15, v3

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v4, v5, :cond_22c

    .line 3902
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-nez v4, :cond_20f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->m()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->u()Z

    move-result v4

    if-eqz v4, :cond_20f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20f

    .line 3904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LCl;->d(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3910
    :cond_20f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v4, :cond_22c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v4}, LDj;->c()Z

    move-result v4

    if-eqz v4, :cond_22c

    .line 3911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    iget v4, v4, LDj;->b:F

    neg-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3915
    :cond_22c
    const/4 v7, 0x0

    .line 3916
    const/4 v6, -0x1

    const/4 v5, -0x1

    .line 3917
    const/4 v4, 0x0

    .line 3924
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v8, :cond_448

    .line 3925
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v6

    .line 3926
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v5

    .line 3928
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->t()Z

    move-result v8

    if-nez v8, :cond_24a

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-eqz v8, :cond_448

    :cond_24a
    if-ltz v6, :cond_448

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_448

    .line 3929
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    if-nez v8, :cond_261

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    .line 3931
    :cond_261
    if-ne v6, v5, :cond_3f0

    .line 3932
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-nez v8, :cond_448

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v8, v8, v10

    if-gez v8, :cond_448

    .line 3934
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    if-eqz v4, :cond_29f

    .line 3935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 3936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v7, v8}, LCl;->a(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 3937
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->w()V

    .line 3938
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 3942
    :cond_29f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 3943
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    const/16 v7, 0xff

    if-eq v4, v7, :cond_2c0

    .line 3944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3946
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    .line 3948
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/docs/editors/text/TextView;->l:I

    if-lez v4, :cond_3ed

    const/4 v4, 0x1

    :goto_2d4
    move v8, v4

    move-object v9, v7

    move v4, v6

    .line 3977
    :goto_2d7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 3978
    sub-int v11, v2, v3

    .line 3979
    if-eqz v10, :cond_39b

    iget v2, v10, LDe;->a:I

    if-nez v2, :cond_39b

    .line 3980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v2}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3981
    if-eqz v2, :cond_39b

    .line 3982
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_323

    .line 3983
    const/4 v3, 0x0

    .line 3984
    iget-boolean v6, v10, LDe;->c:Z

    if-nez v6, :cond_2fe

    iget-boolean v6, v10, LDe;->b:Z

    if-eqz v6, :cond_302

    .line 3988
    :cond_2fe
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()Z

    move-result v3

    .line 3990
    :cond_302
    if-nez v3, :cond_323

    if-eqz v9, :cond_323

    .line 3991
    const/4 v6, -0x1

    .line 3992
    const/4 v7, -0x1

    .line 3993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31e

    .line 3994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    .line 3995
    invoke-static {v3}, LCi;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 3996
    invoke-static {v3}, LCi;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    :cond_31e
    move-object/from16 v3, p0

    .line 3998
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4002
    :cond_323
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_39b

    if-eqz v9, :cond_39b

    .line 4003
    iget-object v3, v10, LDe;->a:Landroid/graphics/RectF;

    const/4 v4, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4004
    iget-object v3, v10, LDe;->a:[F

    const/4 v4, 0x0

    iget-object v5, v10, LDe;->a:[F

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    aput v7, v3, v4

    .line 4006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, v10, LDe;->a:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4007
    iget-object v3, v10, LDe;->a:Landroid/graphics/RectF;

    iget-object v4, v10, LDe;->a:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, v10, LDe;->a:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4009
    iget-object v3, v10, LDe;->a:Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v5, v11

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4011
    iget-object v3, v10, LDe;->a:Landroid/graphics/Rect;

    iget-object v4, v10, LDe;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, v10, LDe;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v5, v12

    double-to-int v5, v5

    iget-object v6, v10, LDe;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v6, v12

    double-to-int v6, v6

    iget-object v7, v10, LDe;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v7

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v12, v15

    double-to-int v7, v12

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4015
    iget-object v3, v10, LDe;->a:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, v10, LDe;->a:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, v10, LDe;->a:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, v10, LDe;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4021
    :cond_39b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    if-eqz v2, :cond_3aa

    .line 4022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCY;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11}, LCY;->a(Landroid/graphics/Canvas;I)V

    .line 4025
    :cond_3aa
    if-eqz v8, :cond_3ad

    .line 4026
    const/4 v9, 0x0

    .line 4029
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9, v2, v11}, LCl;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4031
    if-eqz v8, :cond_3bf

    .line 4032
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/graphics/Canvas;I)V

    .line 4035
    :cond_3bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    if-eqz v2, :cond_3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v2}, LDj;->b()Z

    move-result v2

    if-eqz v2, :cond_3e8

    .line 4036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDj;

    invoke-virtual {v2}, LDj;->a()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9, v2, v11}, LCl;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4046
    :cond_3e8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_21

    .line 3948
    :cond_3ed
    const/4 v4, 0x0

    goto/16 :goto_2d4

    .line 3951
    :cond_3f0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    if-eqz v7, :cond_40d

    .line 3952
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 3953
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v5, v8}, LCl;->a(IILandroid/graphics/Path;)V

    .line 3954
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->y:Z

    .line 3958
    :cond_40d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3959
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    const/16 v8, 0xff

    if-eq v7, v8, :cond_436

    .line 3960
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3962
    :cond_436
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3964
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Path;

    move v8, v4

    move-object v9, v7

    move v4, v6

    goto/16 :goto_2d7

    :cond_448
    move v8, v4

    move-object v9, v7

    move v4, v6

    goto/16 :goto_2d7
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:J

    .line 6355
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->l()V

    .line 6357
    if-eqz p1, :cond_9b

    .line 6358
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v3

    .line 6359
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v4

    .line 6364
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:Z

    if-eqz v0, :cond_97

    if-nez v3, :cond_97

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v4, v0, :cond_97

    move v0, v1

    .line 6366
    :goto_24
    iget-boolean v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Z

    if-eqz v5, :cond_99

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()Z

    move-result v5

    if-eqz v5, :cond_99

    if-nez v0, :cond_99

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:Z

    .line 6368
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Z

    if-eqz v0, :cond_3b

    if-ltz v3, :cond_3b

    if-gez v4, :cond_6d

    .line 6372
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()I

    move-result v5

    .line 6373
    if-ltz v5, :cond_48

    .line 6374
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6377
    :cond_48
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_55

    .line 6378
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v5, p0, v0, p2}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)V

    .line 6390
    :cond_55
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    if-eqz v0, :cond_64

    if-ltz v3, :cond_64

    if-ltz v4, :cond_64

    .line 6399
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6402
    :cond_64
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:Z

    if-eqz v0, :cond_6b

    .line 6403
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->z()Z

    .line 6406
    :cond_6b
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:Z

    .line 6409
    :cond_6d
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Z

    .line 6410
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->f:Z

    .line 6412
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_7e

    .line 6413
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 6414
    invoke-static {v0}, LDG;->a(Landroid/text/Spannable;)V

    .line 6417
    :cond_7e
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->E()V

    .line 6430
    :cond_81
    :goto_81
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->c(Z)V

    .line 6432
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    if-eqz v0, :cond_93

    .line 6433
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, LEd;->a(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 6436
    :cond_93
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6437
    return-void

    :cond_97
    move v0, v2

    .line 6364
    goto :goto_24

    :cond_99
    move v0, v2

    .line 6366
    goto :goto_31

    .line 6420
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()V

    .line 6422
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 6425
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v0, :cond_81

    .line 6426
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v0}, LDp;->c()V

    goto :goto_81
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 6615
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1d

    .line 6617
    :try_start_e
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, LDH;->d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_17} :catch_1c

    move-result v0

    if-eqz v0, :cond_1d

    .line 6618
    const/4 v0, 0x1

    .line 6627
    :goto_1b
    return v0

    .line 6620
    :catch_1c
    move-exception v0

    .line 6627
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4197
    if-nez v0, :cond_c

    .line 4199
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4202
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4207
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    .line 4209
    invoke-direct {p0, p1, v3, p3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4210
    if-nez v0, :cond_11

    .line 4212
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4241
    :goto_10
    return v0

    .line 4214
    :cond_11
    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    move v0, v1

    .line 4216
    goto :goto_10

    .line 4219
    :cond_16
    add-int/lit8 v2, p2, -0x1

    .line 4226
    invoke-static {p3, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 4227
    if-ne v0, v1, :cond_3e

    .line 4228
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v5, p0, v0, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4229
    :goto_27
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_63

    .line 4230
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v5, p0, v0, p1, v3}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4231
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v5, p0, v0, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_27

    .line 4233
    :cond_3e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_63

    .line 4234
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v5, p0, v0, p1, v4}, LDH;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move v0, v2

    .line 4235
    :goto_4b
    add-int/lit8 v2, v0, -0x1

    if-lez v2, :cond_63

    .line 4236
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v5, p0, v0, p1, v3}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4237
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v5, p0, v0, p1, v4}, LDH;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move v0, v2

    goto :goto_4b

    :cond_63
    move v0, v1

    .line 4241
    goto :goto_10
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 6887
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    .line 6888
    invoke-static {v0}, LDE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6889
    sparse-switch p1, :sswitch_data_4c

    .line 6912
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_13
    return v0

    .line 6891
    :sswitch_14
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6892
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    goto :goto_13

    .line 6896
    :sswitch_22
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6897
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    goto :goto_13

    .line 6901
    :sswitch_30
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6902
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    goto :goto_13

    .line 6906
    :sswitch_3e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6907
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    goto :goto_13

    .line 6889
    :sswitch_data_4c
    .sparse-switch
        0x1d -> :sswitch_14
        0x1f -> :sswitch_30
        0x32 -> :sswitch_3e
        0x34 -> :sswitch_22
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4404
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4405
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4486
    :goto_e
    return v0

    .line 4408
    :cond_f
    sparse-switch p1, :sswitch_data_e0

    .line 4481
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_c3

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v2, p0, v0, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c3

    move v0, v1

    goto :goto_e

    .line 4410
    :sswitch_24
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->o:Z

    .line 4411
    invoke-static {p2}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4420
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_47

    .line 4421
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4423
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->i()V

    .line 4427
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e

    .line 4430
    :sswitch_4c
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:Z

    .line 4431
    invoke-static {p2}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4432
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:LDl;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-boolean v0, v0, LDd;->a:Z

    if-eqz v0, :cond_74

    .line 4434
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput-boolean v2, v0, LDd;->a:Z

    .line 4435
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v0, v0, LDd;->a:LDl;

    invoke-interface {v0, p0, v2, p2}, LDl;->a(Lcom/google/android/apps/docs/editors/text/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    .line 4437
    goto :goto_e

    .line 4441
    :cond_74
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_82

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 4451
    :cond_82
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_bd

    .line 4452
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 4454
    if-eqz v0, :cond_a0

    .line 4455
    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 4456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4464
    :cond_9a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 4465
    goto/16 :goto_e

    .line 4466
    :cond_a0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_bd

    .line 4469
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4470
    if-eqz v0, :cond_bd

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 4471
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4476
    :cond_bd
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_e

    .line 4483
    :cond_c3
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_da

    .line 4484
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v2, p0, v0, p1, p2}, LDH;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_da

    move v0, v1

    goto/16 :goto_e

    .line 4486
    :cond_da
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_e

    .line 4408
    :sswitch_data_e0
    .sparse-switch
        0x17 -> :sswitch_24
        0x42 -> :sswitch_4c
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 5138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 5139
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 5140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 5141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 5146
    sget-object v3, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    .line 5147
    sget-object v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    .line 5149
    const/4 v0, -0x1

    .line 5150
    const/4 v1, 0x0

    .line 5152
    const/high16 v2, 0x4000

    if-ne v6, v2, :cond_8e

    move v2, v0

    move v7, v5

    move v0, v1

    .line 5207
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int v8, v1, v5

    .line 5210
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:Z

    if-eqz v1, :cond_17a

    const/16 v1, 0x4000

    .line 5212
    :goto_2f
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v5, :cond_127

    .line 5213
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5228
    :cond_45
    :goto_45
    const/high16 v0, 0x4000

    if-ne v10, v0, :cond_163

    .line 5231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->B:I

    move v0, v9

    .line 5243
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->d()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5244
    iget v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_73

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2}, LCl;->a()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    if-le v2, v3, :cond_73

    .line 5245
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    invoke-virtual {v2, v3}, LCl;->a(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5252
    :cond_73
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-nez v2, :cond_87

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2}, LCl;->c()I

    move-result v2

    if-gt v2, v8, :cond_87

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v2}, LCl;->d()I

    move-result v2

    if-le v2, v1, :cond_173

    .line 5254
    :cond_87
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()V

    .line 5259
    :goto_8a
    invoke-virtual {p0, v7, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setMeasuredDimension(II)V

    .line 5260
    return-void

    .line 5156
    :cond_8e
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_9c

    .line 5157
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(LCl;)I

    move-result v0

    .line 5160
    :cond_9c
    if-gez v0, :cond_113

    .line 5161
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v7}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    .line 5162
    if-eqz v3, :cond_183

    .line 5163
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/text/BoringLayout$Metrics;

    move v2, v1

    .line 5169
    :goto_ad
    if-eqz v3, :cond_b3

    sget-object v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    if-ne v3, v1, :cond_116

    .line 5170
    :cond_b3
    if-gez v0, :cond_c2

    .line 5171
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-static {v0, v1}, LCl;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    :cond_c2
    move v1, v0

    .line 5179
    :goto_c3
    iget-object v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 5180
    if-eqz v7, :cond_d3

    .line 5181
    iget v8, v7, LDb;->e:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5182
    iget v7, v7, LDb;->f:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5185
    :cond_d3
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 5187
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_119

    .line 5188
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5193
    :goto_ed
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_120

    .line 5194
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5200
    :goto_fd
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5202
    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_17d

    .line 5203
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v7, v1

    move v12, v0

    move v0, v2

    move v2, v12

    goto/16 :goto_1d

    .line 5166
    :cond_113
    const/4 v1, 0x1

    move v2, v1

    goto :goto_ad

    .line 5176
    :cond_116
    iget v1, v3, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_c3

    .line 5190
    :cond_119
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_ed

    .line 5196
    :cond_120
    iget v7, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_fd

    .line 5215
    :cond_127
    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v5}, LCl;->c()I

    move-result v5

    if-ne v5, v1, :cond_142

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v5}, LCl;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v11

    sub-int/2addr v6, v11

    if-eq v5, v6, :cond_45

    .line 5218
    :cond_142
    if-eqz v0, :cond_14f

    if-ltz v2, :cond_14f

    if-gt v2, v1, :cond_14f

    .line 5219
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, v1}, LCl;->a(I)V

    goto/16 :goto_45

    .line 5221
    :cond_14f
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_45

    .line 5233
    :cond_163
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()I

    move-result v0

    .line 5236
    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->B:I

    .line 5238
    const/high16 v1, -0x8000

    if-ne v10, v1, :cond_4d

    .line 5239
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_4d

    .line 5256
    :cond_173
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    goto/16 :goto_8a

    :cond_17a
    move v1, v8

    goto/16 :goto_2f

    :cond_17d
    move v7, v1

    move v12, v0

    move v0, v2

    move v2, v12

    goto/16 :goto_1d

    :cond_183
    move v2, v1

    goto/16 :goto_ad
.end method

.method public onPreDraw()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3459
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    if-eq v0, v2, :cond_7

    .line 3509
    :goto_6
    return v2

    .line 3463
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v0, :cond_e

    .line 3464
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->y()V

    .line 3469
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_51

    .line 3475
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v0

    .line 3477
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDp;

    invoke-virtual {v3}, LDp;->a()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3479
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    .line 3487
    :cond_26
    if-gez v0, :cond_36

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x50

    if-ne v3, v4, :cond_36

    .line 3488
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3491
    :cond_36
    if-ltz v0, :cond_56

    .line 3492
    iget-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ZI)Z

    move-result v0

    .line 3493
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Z

    .line 3503
    :goto_40
    iget-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:Z

    if-eqz v3, :cond_49

    .line 3504
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()Z

    .line 3505
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->i:Z

    .line 3508
    :cond_49
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:I

    .line 3509
    if-nez v0, :cond_4f

    move v1, v2

    :cond_4f
    move v2, v1

    goto :goto_6

    .line 3496
    :cond_51
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()Z

    move-result v0

    goto :goto_40

    :cond_56
    move v0, v1

    goto :goto_40
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter

    .prologue
    .line 2540
    instance-of v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    if-nez v0, :cond_8

    .line 2541
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2575
    :cond_7
    :goto_7
    return-void

    .line 2545
    :cond_8
    check-cast p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;

    .line 2546
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2549
    iget-object v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 2550
    iget-object v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2553
    :cond_1a
    iget v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:I

    if-ltz v0, :cond_7

    iget v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->b:I

    if-ltz v0, :cond_7

    .line 2554
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    .line 2555
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2557
    iget v1, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:I

    if-gt v1, v0, :cond_36

    iget v1, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->b:I

    if-le v1, v0, :cond_7b

    .line 2558
    :cond_36
    const-string v0, ""

    .line 2560
    iget-object v1, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3e

    .line 2561
    const-string v0, "(restored) "

    .line 2564
    :cond_3e
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved cursor position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "text "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2567
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget v1, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:I

    iget v2, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->b:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2569
    iget-boolean v0, p1, Lcom/google/android/apps/docs/editors/text/TextView$SavedState;->a:Z

    if-eqz v0, :cond_7

    .line 2570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Z

    goto/16 :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 2534
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2535
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSetAlpha(I)Z
    .registers 4
    .parameter

    .prologue
    .line 3655
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_42

    .line 3656
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    .line 3657
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 3658
    if-eqz v0, :cond_40

    .line 3659
    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3660
    :cond_19
    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3661
    :cond_26
    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3662
    :cond_33
    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    iget-object v0, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3664
    :cond_40
    const/4 v0, 0x1

    .line 3668
    :goto_41
    return v0

    .line 3667
    :cond_42
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:I

    .line 3668
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6521
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->q()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6522
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDi;

    move-result-object v1

    invoke-virtual {v1, p1}, LDi;->a(Landroid/view/MotionEvent;)Z

    .line 6524
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6525
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v1

    invoke-virtual {v1, p1}, LDp;->a(Landroid/view/MotionEvent;)Z

    .line 6528
    :cond_20
    if-nez v0, :cond_34

    .line 6529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:I

    .line 6530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:I

    .line 6534
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->g:Z

    .line 6535
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:Z

    .line 6538
    :cond_34
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 6544
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:Z

    if-eqz v1, :cond_42

    if-ne v0, v2, :cond_42

    .line 6545
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:Z

    move v2, v5

    .line 6605
    :cond_41
    :goto_41
    return v2

    .line 6549
    :cond_42
    if-ne v0, v2, :cond_ea

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:Z

    if-nez v0, :cond_ea

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_ea

    move v1, v2

    .line 6552
    :goto_4f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-nez v0, :cond_59

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_e7

    :cond_59
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_e7

    .line 6556
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_111

    .line 6557
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v4, p0, v0, p1}, LDH;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v4, v3, v0

    .line 6560
    :goto_79
    if-eqz v1, :cond_10f

    .line 6565
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v7

    const-class v8, LEf;

    invoke-interface {v0, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf;

    .line 6568
    array-length v6, v0

    if-eqz v6, :cond_10f

    .line 6569
    aget-object v0, v0, v3

    .line 6572
    instance-of v6, v0, Landroid/text/style/ClickableSpan;

    if-eqz v6, :cond_a4

    iget-boolean v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:Z

    if-eqz v6, :cond_10f

    iget v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:I

    if-eqz v6, :cond_10f

    iget-boolean v6, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-eqz v6, :cond_10f

    .line 6574
    :cond_a4
    invoke-interface {v0, p0}, LEf;->a(Landroid/view/View;)V

    move v0, v2

    .line 6580
    :goto_a8
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->v()Z

    move-result v4

    if-nez v4, :cond_b2

    iget-boolean v4, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-eqz v4, :cond_e5

    :cond_b2
    if-eqz v1, :cond_e5

    .line 6582
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-nez v1, :cond_cf

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:Z

    if-eqz v1, :cond_cf

    .line 6583
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v1}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 6584
    if-eqz v1, :cond_ed

    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_ed

    move v1, v2

    :goto_cb
    or-int/2addr v0, v1

    .line 6585
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()V

    .line 6588
    :cond_cf
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:Z

    if-eqz v1, :cond_da

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()Z

    move-result v1

    if-eqz v1, :cond_da

    move v3, v2

    .line 6589
    :cond_da
    if-nez v3, :cond_ef

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 6590
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()Z

    .line 6600
    :cond_e5
    :goto_e5
    if-nez v0, :cond_41

    :cond_e7
    move v2, v5

    .line 6605
    goto/16 :goto_41

    :cond_ea
    move v1, v3

    .line 6549
    goto/16 :goto_4f

    :cond_ed
    move v1, v3

    .line 6584
    goto :goto_cb

    .line 6592
    :cond_ef
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    .line 6593
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCJ;

    invoke-virtual {v1}, LCJ;->b()V

    .line 6594
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->q()Z

    move-result v1

    if-eqz v1, :cond_e5

    if-nez v3, :cond_e5

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_e5

    .line 6595
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDi;

    move-result-object v1

    invoke-virtual {v1}, LDi;->a()V

    goto :goto_e5

    :cond_10f
    move v0, v4

    goto :goto_a8

    :cond_111
    move v4, v3

    goto/16 :goto_79
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1c

    .line 6696
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, LDH;->c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6697
    const/4 v0, 0x1

    .line 6701
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6485
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 6486
    if-eqz p2, :cond_8

    .line 6487
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 6489
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 6460
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 6462
    if-eqz p1, :cond_15

    .line 6463
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    if-eqz v0, :cond_11

    .line 6464
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    invoke-virtual {v0}, LCV;->b()V

    .line 6465
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->E()V

    .line 6480
    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->c(Z)V

    .line 6481
    return-void

    .line 6468
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    if-eqz v0, :cond_1e

    .line 6469
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCV;

    invoke-virtual {v0}, LCV;->a()V

    .line 6472
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->p()V

    .line 6473
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-eqz v0, :cond_2a

    .line 6474
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    const/4 v1, 0x0

    iput-boolean v1, v0, LDd;->a:Z

    .line 6476
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 6477
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCJ;

    invoke-virtual {v0}, LCJ;->a()V

    goto :goto_11
.end method

.method public p()V
    .registers 1

    .prologue
    .line 4965
    return-void
.end method

.method public p()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6953
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6961
    :cond_7
    :goto_7
    return v0

    .line 6957
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6958
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public performLongClick()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7350
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7351
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:Z

    move v0, v1

    .line 7394
    :cond_b
    :goto_b
    return v0

    .line 7359
    :cond_c
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:I

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:I

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)Z

    move-result v0

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:Z

    if-eqz v0, :cond_54

    .line 7360
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:I

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:I

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v3

    .line 7361
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->r()V

    .line 7362
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7363
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDi;

    move-result-object v0

    invoke-virtual {v0}, LDi;->b()V

    move v0, v1

    .line 7367
    :goto_34
    if-nez v0, :cond_52

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v3, :cond_52

    .line 7382
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->A()Z

    move v3, v1

    .line 7387
    :goto_3e
    if-nez v3, :cond_50

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_47
    or-int/2addr v0, v3

    .line 7389
    if-eqz v0, :cond_b

    .line 7390
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->performHapticFeedback(I)Z

    .line 7391
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:Z

    goto :goto_b

    :cond_50
    move v0, v2

    .line 7387
    goto :goto_47

    :cond_52
    move v3, v0

    goto :goto_3e

    :cond_54
    move v0, v2

    goto :goto_34
.end method

.method public q()V
    .registers 2

    .prologue
    .line 6684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:Z

    .line 6685
    return-void
.end method

.method q()Z
    .registers 2

    .prologue
    .line 8722
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->l:Z

    return v0
.end method

.method protected r()V
    .registers 2

    .prologue
    .line 7523
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    if-eqz v0, :cond_9

    .line 7525
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    invoke-interface {v0}, LCD;->s()V

    .line 7527
    :cond_9
    return-void
.end method

.method r()Z
    .registers 2

    .prologue
    .line 8729
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->m:Z

    return v0
.end method

.method public s()V
    .registers 2

    .prologue
    .line 7533
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7534
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->a()V

    .line 7536
    :cond_d
    return-void
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 8763
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    .line 8764
    if-eqz v0, :cond_c

    .line 8765
    iget v0, v0, LDe;->a:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    .line 8767
    :goto_9
    return v0

    .line 8765
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 8767
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->n:Z

    goto :goto_9
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter

    .prologue
    .line 7081
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_5

    .line 7089
    :cond_4
    :goto_4
    return-void

    .line 7085
    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 7088
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .parameter

    .prologue
    .line 1904
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:I

    .line 1905
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .parameter

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1597
    if-nez p1, :cond_f

    .line 1598
    if-eqz v0, :cond_8

    .line 1599
    iput p1, v0, LDb;->i:I

    .line 1608
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1609
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 1610
    return-void

    .line 1602
    :cond_f
    if-nez v0, :cond_18

    .line 1603
    new-instance v0, LDb;

    invoke-direct {v0, p0}, LDb;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1605
    :cond_18
    iput p1, v0, LDb;->i:I

    goto :goto_8
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1426
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1428
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_1e

    :cond_c
    const/4 v1, 0x1

    .line 1430
    :goto_d
    if-nez v1, :cond_5d

    .line 1432
    if-eqz v0, :cond_17

    .line 1433
    iget v1, v0, LDb;->i:I

    if-nez v1, :cond_20

    .line 1434
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1523
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1524
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 1525
    return-void

    :cond_1e
    move v1, v2

    .line 1428
    goto :goto_d

    .line 1438
    :cond_20
    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1439
    :cond_29
    iput-object v3, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    .line 1440
    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_34

    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1441
    :cond_34
    iput-object v3, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    .line 1442
    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3f

    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1443
    :cond_3f
    iput-object v3, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    .line 1444
    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4a

    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1445
    :cond_4a
    iput-object v3, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    .line 1446
    iput v2, v0, LDb;->g:I

    iput v2, v0, LDb;->c:I

    .line 1447
    iput v2, v0, LDb;->h:I

    iput v2, v0, LDb;->d:I

    .line 1448
    iput v2, v0, LDb;->e:I

    iput v2, v0, LDb;->a:I

    .line 1449
    iput v2, v0, LDb;->f:I

    iput v2, v0, LDb;->b:I

    goto :goto_17

    .line 1453
    :cond_5d
    if-nez v0, :cond_66

    .line 1454
    new-instance v0, LDb;

    invoke-direct {v0, p0}, LDb;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    .line 1457
    :cond_66
    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_73

    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_73

    .line 1458
    iget-object v1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1460
    :cond_73
    iput-object p1, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    .line 1462
    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_82

    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_82

    .line 1463
    iget-object v1, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1465
    :cond_82
    iput-object p2, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    .line 1467
    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eq v1, p3, :cond_91

    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_91

    .line 1468
    iget-object v1, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1470
    :cond_91
    iput-object p3, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    .line 1472
    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eq v1, p4, :cond_a0

    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a0

    .line 1473
    iget-object v1, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1475
    :cond_a0
    iput-object p4, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    .line 1477
    iget-object v1, v0, LDb;->a:Landroid/graphics/Rect;

    .line 1480
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1482
    if-eqz p1, :cond_106

    .line 1483
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1484
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1485
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1486
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, LDb;->c:I

    .line 1487
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, LDb;->g:I

    .line 1492
    :goto_bf
    if-eqz p3, :cond_10b

    .line 1493
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1494
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1495
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1496
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, LDb;->d:I

    .line 1497
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, LDb;->h:I

    .line 1502
    :goto_d6
    if-eqz p2, :cond_110

    .line 1503
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1504
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1505
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1506
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, LDb;->a:I

    .line 1507
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, LDb;->e:I

    .line 1512
    :goto_ed
    if-eqz p4, :cond_115

    .line 1513
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1514
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1515
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1516
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, LDb;->b:I

    .line 1517
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, LDb;->f:I

    goto/16 :goto_17

    .line 1489
    :cond_106
    iput v2, v0, LDb;->g:I

    iput v2, v0, LDb;->c:I

    goto :goto_bf

    .line 1499
    :cond_10b
    iput v2, v0, LDb;->h:I

    iput v2, v0, LDb;->d:I

    goto :goto_d6

    .line 1509
    :cond_110
    iput v2, v0, LDb;->e:I

    iput v2, v0, LDb;->a:I

    goto :goto_ed

    .line 1519
    :cond_115
    iput v2, v0, LDb;->f:I

    iput v2, v0, LDb;->b:I

    goto/16 :goto_17
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1543
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1544
    if-eqz p1, :cond_27

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_10
    if-eqz p2, :cond_29

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_17
    if-eqz p3, :cond_2b

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1d
    if-eqz p4, :cond_23

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_23
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1547
    return-void

    :cond_27
    move-object v3, v0

    .line 1544
    goto :goto_10

    :cond_29
    move-object v2, v0

    goto :goto_17

    :cond_2b
    move-object v1, v0

    goto :goto_1d
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1562
    if-eqz p1, :cond_e

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1565
    :cond_e
    if-eqz p3, :cond_1b

    .line 1566
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1568
    :cond_1b
    if-eqz p2, :cond_28

    .line 1569
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1571
    :cond_28
    if-eqz p4, :cond_35

    .line 1572
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1574
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/text/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1575
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 3
    .parameter

    .prologue
    .line 5831
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:Z

    if-eq v0, p1, :cond_f

    .line 5832
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->k:Z

    .line 5833
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5835
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->E()V

    .line 5838
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 5840
    :cond_f
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2
    .parameter

    .prologue
    .line 7450
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/ActionMode$Callback;

    .line 7451
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .parameter

    .prologue
    .line 2613
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Editable$Factory;

    .line 2614
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2615
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .parameter

    .prologue
    .line 5782
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    .line 5784
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_f

    .line 5785
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 5786
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 5787
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5789
    :cond_f
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter

    .prologue
    .line 2300
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    .line 2301
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    .line 2303
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2304
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2305
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1036
    :goto_6
    return-void

    .line 1028
    :cond_7
    if-nez p1, :cond_1f

    .line 1030
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_1f

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1032
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1035
    :cond_1f
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4701
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Landroid/text/Editable;

    move-result-object v4

    .line 4702
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 4703
    if-nez v4, :cond_32

    .line 4704
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v1, LCW;->c:LCW;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 4723
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4724
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 4725
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4726
    if-gez v1, :cond_5d

    move v1, v3

    .line 4729
    :cond_21
    :goto_21
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4730
    if-gez v4, :cond_61

    .line 4733
    :goto_25
    invoke-static {v0, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4736
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_65

    .line 4737
    invoke-static {p0, v0}, LDG;->a(Landroid/view/View;Landroid/text/Spannable;)V

    .line 4741
    :goto_31
    return-void

    .line 4705
    :cond_32
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v0, :cond_47

    .line 4706
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v4, v3, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Spannable;II)V

    .line 4707
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 4709
    :cond_47
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    .line 4710
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4711
    if-le v0, v1, :cond_50

    move v0, v1

    .line 4712
    :cond_50
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4713
    if-le v2, v1, :cond_6b

    .line 4714
    :goto_54
    invoke-static {v4, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Spannable;II)V

    .line 4715
    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 4728
    :cond_5d
    if-le v1, v2, :cond_21

    move v1, v2

    goto :goto_21

    .line 4732
    :cond_61
    if-le v4, v2, :cond_69

    move v3, v2

    goto :goto_25

    .line 4739
    :cond_65
    invoke-static {p0, v0}, LDG;->b(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_31

    :cond_69
    move v3, v4

    goto :goto_25

    :cond_6b
    move v1, v2

    goto :goto_54
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .parameter

    .prologue
    .line 4747
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    if-eqz v0, :cond_8

    .line 4748
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDe;

    iput-object p1, v0, LDe;->a:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4751
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->G()V

    .line 4752
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 3264
    if-nez p1, :cond_8

    .line 3265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3268
    :cond_8
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:[Landroid/text/InputFilter;

    .line 3270
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 3271
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3273
    :cond_17
    return-void
.end method

.method public setFreezesText(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2592
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Z

    .line 2593
    return-void
.end method

.method public setGravity(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2029
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_4b

    .line 2030
    or-int/lit8 v0, p1, 0x3

    .line 2032
    :goto_8
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_e

    .line 2033
    or-int/lit8 v0, v0, 0x30

    .line 2038
    :cond_e
    and-int/lit8 v1, v0, 0x7

    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    and-int/lit8 v3, v3, 0x7

    if-eq v1, v3, :cond_49

    move v1, v6

    .line 2042
    :goto_17
    iget v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    if-eq v0, v3, :cond_1e

    .line 2043
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2046
    :cond_1e
    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:I

    .line 2048
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 2050
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0}, LCl;->c()I

    move-result v1

    .line 2051
    sget-object v3, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/BoringLayout$Metrics;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2054
    :cond_48
    return-void

    :cond_49
    move v1, v2

    goto :goto_17

    :cond_4b
    move v0, p1

    goto :goto_8
.end method

.method public setHeight(I)V
    .registers 3
    .parameter

    .prologue
    .line 2230
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    .line 2231
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    .line 2233
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2234
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2235
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 1862
    iget v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    if-eq v0, p1, :cond_9

    .line 1863
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->q:I

    .line 1864
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1866
    :cond_9
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 1952
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    .line 1953
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 1954
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:Landroid/content/res/ColorStateList;

    .line 1963
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 1964
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2115
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->s:Z

    .line 2117
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_f

    .line 2118
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 2119
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2122
    :cond_f
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-nez v0, :cond_b

    .line 3039
    new-instance v0, LDd;

    invoke-direct {v0, p0}, LDd;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3041
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput-object p1, v0, LDd;->a:Ljava/lang/CharSequence;

    .line 3042
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput p2, v0, LDd;->b:I

    .line 3043
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .parameter

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-nez v0, :cond_b

    .line 3011
    new-instance v0, LDd;

    invoke-direct {v0, p0}, LDd;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3013
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput p1, v0, LDd;->a:I

    .line 3014
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .parameter

    .prologue
    .line 5125
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:Z

    .line 5127
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_f

    .line 5128
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 5129
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 5130
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5132
    :cond_f
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .parameter

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3195
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-nez v1, :cond_13

    new-instance v1, LDd;

    invoke-direct {v1, p0}, LDd;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3196
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, LDd;->a:Landroid/os/Bundle;

    .line 3197
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iget-object v2, v2, LDd;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3198
    return-void
.end method

.method public setInputType(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2897
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(IZ)V

    .line 2900
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->c(I)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 2904
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    if-ne v2, v0, :cond_1c

    .line 2910
    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2911
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2912
    :cond_1b
    return-void

    .line 2907
    :cond_1c
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ZZZ)V

    goto :goto_10
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1160
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/text/method/KeyListener;)V

    .line 1161
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()V

    .line 1163
    if-eqz p1, :cond_29

    .line 1165
    :try_start_8
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I
    :try_end_10
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_8 .. :try_end_10} :catch_24

    .line 1171
    :goto_10
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:Z

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)V

    .line 1176
    :goto_15
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 1177
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/Context;

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1179
    :cond_23
    return-void

    .line 1166
    :catch_24
    move-exception v0

    .line 1167
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    goto :goto_10

    .line 1173
    :cond_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    goto :goto_15
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2331
    iput p2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->d:F

    .line 2332
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:F

    .line 2334
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_11

    .line 2335
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 2336
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2337
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2339
    :cond_11
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .parameter

    .prologue
    .line 2212
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    .line 2213
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    .line 2215
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2216
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2217
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 1995
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    .line 1996
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 1997
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:Landroid/content/res/ColorStateList;

    .line 2006
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 2007
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1916
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:Z

    .line 1917
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .parameter

    .prologue
    .line 5798
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->e:I

    .line 5799
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .parameter

    .prologue
    .line 2272
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    .line 2273
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    .line 2275
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2277
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter

    .prologue
    .line 2194
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    .line 2195
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    .line 2197
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2198
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2199
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .parameter

    .prologue
    .line 2177
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->t:I

    .line 2178
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:I

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2181
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2182
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 2286
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    .line 2287
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    .line 2289
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2290
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2291
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter

    .prologue
    .line 2244
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    .line 2245
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    .line 2247
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2248
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2249
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .parameter

    .prologue
    .line 2161
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    .line 2162
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    .line 2164
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2165
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2166
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .parameter

    .prologue
    .line 2145
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->v:I

    .line 2146
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->w:I

    .line 2148
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2149
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2150
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 2258
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    .line 2259
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    .line 2261
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2262
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2263
    return-void
.end method

.method public final setMovementMethod(LDH;)V
    .registers 3
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    .line 1210
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDH;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()V

    .line 1216
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    .line 1217
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 8772
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/view/View$OnClickListener;

    .line 8773
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8774
    return-void
.end method

.method public setOnEditorActionListener(LDl;)V
    .registers 3
    .parameter

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-nez v0, :cond_b

    .line 3075
    new-instance v0, LDd;

    invoke-direct {v0, p0}, LDd;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3077
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput-object p1, v0, LDd;->a:LDl;

    .line 3078
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingLeft()I

    move-result v0

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingTop()I

    move-result v0

    if-ne p2, v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getPaddingBottom()I

    move-result v0

    if-eq p4, v0, :cond_1b

    .line 1624
    :cond_18
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 1628
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1629
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1630
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .parameter

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 2098
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2100
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1a

    .line 2101
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 2102
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2103
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2106
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    if-nez v0, :cond_b

    new-instance v0, LDd;

    invoke-direct {v0, p0}, LDd;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    .line 3169
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDd;

    iput-object p1, v0, LDd;->a:Ljava/lang/String;

    .line 3170
    return-void
.end method

.method public setRawInputType(I)V
    .registers 2
    .parameter

    .prologue
    .line 2943
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->p:I

    .line 2944
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter

    .prologue
    .line 6705
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/widget/Scroller;

    .line 6706
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .parameter

    .prologue
    .line 5817
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->r:Z

    .line 5819
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 5820
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    sget-object v1, LCW;->b:LCW;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 5822
    :cond_11
    return-void
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter

    .prologue
    .line 6504
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->isSelected()Z

    move-result v0

    .line 6506
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 6508
    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_14

    .line 6509
    if-eqz p1, :cond_15

    .line 6510
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->B()V

    .line 6515
    :cond_14
    :goto_14
    return-void

    .line 6512
    :cond_15
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->C()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1880
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:F

    .line 1881
    iput p2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->b:F

    .line 1882
    iput p3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->c:F

    .line 1884
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1885
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 5716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setSingleLine(Z)V

    .line 5717
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 5734
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Z)V

    .line 5735
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(ZZZ)V

    .line 5736
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .parameter

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/Spannable$Factory;

    .line 2622
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2623
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .parameter

    .prologue
    .line 2868
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2869
    return-void
.end method

.method public final setText(ILCW;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2872
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 2873
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCW;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 2640
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;LCW;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2664
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;LCW;ZI)V

    .line 2666
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    if-eqz v0, :cond_f

    .line 2667
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LCd;->a([C)V

    .line 2669
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2818
    .line 2820
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_27

    .line 2821
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2828
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_49

    .line 2829
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2830
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v0, p3}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Ljava/lang/CharSequence;III)V

    .line 2835
    :goto_36
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    if-nez v2, :cond_50

    .line 2836
    new-instance v2, LCd;

    invoke-direct {v2, p1, p2, p3}, LCd;-><init>([CII)V

    iput-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    .line 2841
    :goto_41
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCW;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/CharSequence;LCW;ZI)V

    .line 2842
    return-void

    .line 2832
    :cond_49
    const-string v0, ""

    invoke-direct {p0, v0, v1, v1, p3}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Ljava/lang/CharSequence;III)V

    move v0, v1

    goto :goto_36

    .line 2838
    :cond_50
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCd;

    invoke-virtual {v2, p1, p2, p3}, LCd;->a([CII)V

    goto :goto_41
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1697
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 1817
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/res/ColorStateList;

    .line 1818
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 1819
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter

    .prologue
    .line 1827
    if-nez p1, :cond_8

    .line 1828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1831
    :cond_8
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/content/res/ColorStateList;

    .line 1832
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->c()V

    .line 1833
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3706
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    if-ne v0, p1, :cond_5

    .line 3722
    :goto_4
    return-void

    .line 3708
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->u:Z

    .line 3710
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setFocusableInTouchMode(Z)V

    .line 3711
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setFocusable(Z)V

    .line 3712
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setClickable(Z)V

    .line 3713
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setLongClickable(Z)V

    .line 3717
    if-eqz p1, :cond_2b

    invoke-static {}, LDu;->a()LDH;

    move-result-object v0

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setMovementMethod(LDH;)V

    .line 3718
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_2d

    sget-object v0, LCW;->b:LCW;

    :goto_24
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 3721
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->D()V

    goto :goto_4

    .line 3717
    :cond_2b
    const/4 v0, 0x0

    goto :goto_19

    .line 3718
    :cond_2d
    sget-object v0, LCW;->a:LCW;

    goto :goto_24
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCW;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setTextKeepState(Ljava/lang/CharSequence;LCW;)V

    .line 2653
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;LCW;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2852
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    .line 2853
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v2

    .line 2854
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2856
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;LCW;)V

    .line 2858
    if-gez v1, :cond_14

    if-ltz v2, :cond_31

    .line 2859
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_31

    .line 2860
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2864
    :cond_31
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .parameter

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->j:Z

    .line 1770
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1f

    .line 1773
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 1774
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 1775
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1778
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter

    .prologue
    .line 1717
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setTextSize(IF)V

    .line 1718
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1733
    if-nez v0, :cond_16

    .line 1734
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1738
    :goto_a
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(F)V

    .line 1739
    return-void

    .line 1736
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_a
.end method

.method public final setTransformationMethod(LEd;)V
    .registers 4
    .parameter

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    if-ne p1, v0, :cond_5

    .line 1261
    :goto_4
    return-void

    .line 1252
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    if-eqz v0, :cond_18

    .line 1253
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_18

    .line 1254
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    :cond_18
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LEd;

    .line 1260
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 1791
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1793
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v0, :cond_1a

    .line 1794
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->x()V

    .line 1795
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 1796
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 1799
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1047
    if-lez p2, :cond_35

    .line 1048
    if-nez p1, :cond_2c

    .line 1049
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1054
    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1056
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 1057
    :goto_13
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    .line 1058
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1059
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_33

    const/high16 v0, -0x4180

    :goto_28
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1065
    :goto_2b
    return-void

    .line 1051
    :cond_2c
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_a

    :cond_31
    move v0, v1

    .line 1056
    goto :goto_13

    :cond_33
    move v0, v2

    .line 1059
    goto :goto_28

    .line 1061
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1062
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1063
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2b
.end method

.method public setWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 2315
    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->z:I

    iput p1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->x:I

    .line 2316
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->A:I

    iput v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->y:I

    .line 2318
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->requestLayout()V

    .line 2319
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 2320
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 7542
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7543
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->b()V

    .line 7545
    :cond_d
    return-void
.end method

.method public u()V
    .registers 2

    .prologue
    .line 7548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCD;

    .line 7549
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter

    .prologue
    .line 3593
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 3594
    if-nez v0, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    if-eqz v1, :cond_23

    .line 3595
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    iget-object v0, v0, LDb;->c:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    iget-object v0, v0, LDb;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    iget-object v0, v0, LDb;->d:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LDb;

    iget-object v0, v0, LDb;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 3598
    :cond_23
    :goto_23
    return v0

    .line 3595
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
