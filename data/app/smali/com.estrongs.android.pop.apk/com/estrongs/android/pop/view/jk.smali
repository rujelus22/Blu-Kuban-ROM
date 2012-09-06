.class Lcom/estrongs/android/pop/view/jk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jk;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jk;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    const/4 v0, 0x1

    return v0
.end method
